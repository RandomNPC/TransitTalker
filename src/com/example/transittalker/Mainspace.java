package com.example.transittalker;
import com.example.transittalker.data.*;

import android.location.Location;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.app.Activity;

public class Mainspace extends Activity implements Route.Listener, GeoCache.Listener, MyUI.Listener,MyGesture.Listener{

	private Route ref;
	private GeoCache gc;
	private TalkToMe ttm;
	private MyUI mui;
	private DataTransfer dt;
	private boolean offcourse;
	private MyGesture mg;
	private GenericSelect gs;
	
	private TextView textTOP,textMID,textBOT;
	
	private void initialize(){
		gc = new GeoCache(this);
		ttm = new TalkToMe(this);
		mui = new MyUI(this);
		ref = new Route(this);
		dt = new DataTransfer(this);
		offcourse = false;
		mg = new MyGesture(this);
		gs = new GenericSelect();
		
		textTOP = (TextView) findViewById(R.id.displayTOP);
		textMID = (TextView) findViewById(R.id.displayMID);
		textBOT = (TextView) findViewById(R.id.displayBOTTOM);
		
		changeVisibility(R.id.search,View.INVISIBLE);
		changeVisibility(R.id.fence, View.INVISIBLE);
		changeVisibility(R.id.pr, View.INVISIBLE);
		changeVisibility(R.id.leftArrow, View.INVISIBLE);
		changeVisibility(R.id.rightArrow, View.INVISIBLE);
		
		//initialize data!
		ref.init_Data(this, dt.getData());
		single_result();		
	}
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.uiface);
        initialize();
    }

	private void changeVisibility(int imageID, int status){
		findViewById(imageID).setVisibility(status);
	}
    
	public void multiple_results(int mode) {
		
		mui.setUI(10);
		mg.enableTouchResponse(true);
		switch(mode){
			case 0: //route_query
				ref.set_route(ref.multi_route().get(0));
				changeVisibility(R.id.rightArrow, View.VISIBLE);
				textTOP.setText(ref.route().br_rn() + " " + ref.route().br_rd());
				textMID.setText("");
				textBOT.setText("Select Destination");
				break;
			case 1: //pr_query
				ref.set_pr(ref.multi_prcode().get(0));
				changeVisibility(R.id.rightArrow, View.VISIBLE);
				textTOP.setText(ref.prcode().prMsg());
				textMID.setText("");
				textBOT.setText("Select PR Code");
				break;
			default://wtf?
				break;
		}
	} 

	public void single_result() {
		if(ref.route()!=null){
			
			textTOP.setText(ref.route().br_rn() + " " + ref.route().br_rd());
			if(ref.route().br_first()!=null)textBOT.setText(ref.route().br_first().bs_Loc().getProvider());
			
			if(ref.prcode()!=null){
				if(!ref.prcode().iD().equals("0"))changeVisibility(R.id.pr, View.VISIBLE);
				textMID.setText(ref.prcode().prMsg());
			}
			else{
				textMID.setText("");
			}
			gc.startListening(500, 0);
			offcourse = false;
		}else{
			if(ref.prcode()!=null){
				textTOP.setText("No Route Pattern Set");
				textMID.setText(ref.prcode().prMsg());
				textBOT.setText("");

				if(!ref.prcode().iD().equals("0")) changeVisibility(R.id.pr, View.VISIBLE);
			}
			else{
				textTOP.setText("No Route Pattern Set");
				textMID.setText("No P/R Code set");
				textBOT.setText("");
				changeVisibility(R.id.pr, View.INVISIBLE);
			}
		}
	}

	
	public void resetRoutes() {
		gc.stopListening();
		if(ref.route()!=null)ref.route().br_reset();
	}


	public void newDestination(String dest) {
		mui.setUI(0);
		ref.route_query(dest);
	}

	public void newPR(String pr) {
		mui.setUI(0);
		ref.pr_query(pr);
	}


	public void destinationPicked() {
		mg.enableTouchResponse(false);
		changeVisibility(R.id.rightArrow,View.INVISIBLE);
		changeVisibility(R.id.leftArrow,View.INVISIBLE);
		single_result();
	}


	public void locationUpdated(Location obj) {
		ref.route().br_setBusPos(obj);
		
		if(ref.route().br_onTrack())changeVisibility(R.id.fence, View.INVISIBLE);
		else changeVisibility(R.id.fence, View.VISIBLE);
		
		if(ref.route().br_onTrack() && offcourse){
			//on bus path
			changeVisibility(R.id.search, View.INVISIBLE);
			ref.route().br_atStop();	
		}else{
			//off of bus path
			changeVisibility(R.id.search, View.VISIBLE);
			ref.route().br_stopOffPath();
		}
	}

	public void approching_stop(BusStop stop) {
		if(stop!=null){
			ttm.speak("Approaching " + stop.bs_Prev().bs_Loc().getProvider());
			textBOT.setText(stop.bs_Loc().getProvider());
			offcourse = true;
		}
	}

	public void scrollto(boolean direction) {
		
		if(ref.multi_prcode()!=null){
			gs.setMax(ref.multi_prcode().size());
		}
		else if(ref.multi_route()!=null){
			gs.setMax(ref.multi_route().size());
		}
		
		if(direction){ //left to right
			gs.prev();
		}
		else{ //right to left
			gs.next();
		}
		
		if(gs.isMax())changeVisibility(R.id.rightArrow, View.INVISIBLE);
		else changeVisibility(R.id.rightArrow, View.VISIBLE);
		
		if(gs.isMin())changeVisibility(R.id.leftArrow, View.INVISIBLE);
		else changeVisibility(R.id.leftArrow, View.VISIBLE);
		
		
		if(ref.multi_prcode()!=null){
			ref.set_pr(gs.getObject(ref.multi_prcode()));
			textTOP.setText(ref.prcode().prMsg());
			textMID.setText("");
			textBOT.setText("Select PR Code");
		}
		else if(ref.multi_route()!=null){
			ref.set_route(gs.getObject(ref.multi_route()));
			textTOP.setText(ref.route().br_rn() + " " + ref.route().br_rd());
			textMID.setText("");
			textBOT.setText("Select Destination");
		}
	}

	@Override
	public void speakDest() {
		if(ref.route()!=null)ttm.speak(ref.route().br_an());
	}
}
