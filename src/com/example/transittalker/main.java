package com.example.transittalker;

import java.util.ArrayList;
import java.util.Locale;

import android.app.Activity;
import android.content.Context;
import android.gesture.Gesture;
import android.gesture.GestureLibraries;
import android.gesture.GestureLibrary;
import android.gesture.GestureOverlayView;
import android.gesture.GestureOverlayView.OnGesturePerformedListener;
import android.gesture.Prediction;
import android.graphics.Color;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class main extends Activity implements OnClickListener, OnLongClickListener, OnGesturePerformedListener{

	LocationListener listener;
	LocationManager manager;
	TextToSpeech tts;
	TransitMain transit = new TransitMain(100);
	GestureLibrary gls;
	GestureOverlayView golw;
	
	//TextToSpeech
	void speakToMe(final String speakStopName) {
		
		
		tts = new TextToSpeech(main.this, new TextToSpeech.OnInitListener() {

			public void onInit(int status) {
				if (status != TextToSpeech.ERROR) {
					//HashMap<String, String> params = new HashMap<String, String>();
					//params.put(TextToSpeech.Engine.KEY_FEATURE_NETWORK_SYNTHESIS,"true");
					
					tts.setLanguage(Locale.US);
					tts.speak(speakStopName, TextToSpeech.QUEUE_ADD, null);
				}
			}
		});
	}
	
	//ImageView
	void changeVisibility(int imageID, int status){
		ImageView image = (ImageView) findViewById(imageID);
		image.setVisibility(status);
	}
		
	//default
    @Override
    public void onCreate(Bundle savedInstanceState) {
        	
    	super.onCreate(savedInstanceState);
    	setContentView(R.layout.main);
        Log.i("LETS GO!","OnCreate");
    	//Settings
		setRequestedOrientation(0); //stupid method crashes the app!!!!!!AAARGGGHH RRAAAGEE
		getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
		AudioManager aM = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
		aM.setStreamVolume(AudioManager.STREAM_MUSIC, aM.getStreamMaxVolume(AudioManager.STREAM_MUSIC), 0);

		golw = (GestureOverlayView) findViewById(R.id.gesturearea);
		
		golw.setGestureColor(Color.BLUE);
		golw.setGestureVisible(true);
		golw.setUncertainGestureColor(Color.RED);
		
		golw.addOnGesturePerformedListener(this);
		gls = GestureLibraries.fromRawResource(this,R.raw.gestures);
		if(!gls.load()){
			Log.i("GESTURELIB","Gesture Library failed to load");
		}
		
		Button key1 = (Button) findViewById(R.id.button1);
		Button key2 = (Button) findViewById(R.id.button2);
		Button key3 = (Button) findViewById(R.id.button3);
		Button key4 = (Button) findViewById(R.id.button4);
		Button key5 = (Button) findViewById(R.id.button5);
		Button key6 = (Button) findViewById(R.id.button6);
		Button key7 = (Button) findViewById(R.id.button7);
		Button key8 = (Button) findViewById(R.id.button8);
		Button key9 = (Button) findViewById(R.id.button9);
		Button key0 = (Button) findViewById(R.id.button0);
		Button keyClear = (Button) findViewById(R.id.buttonClear);
		Button keySet = (Button) findViewById(R.id.buttonSet);
		
		key1.setOnClickListener(this);
		key2.setOnClickListener(this);
		key3.setOnClickListener(this);
		key4.setOnClickListener(this);
		key5.setOnClickListener(this);
		key6.setOnClickListener(this);
		key7.setOnClickListener(this);
		key8.setOnClickListener(this);
		key9.setOnClickListener(this);
		key0.setOnClickListener(this);
		keySet.setOnClickListener(this);
		keyClear.setOnClickListener(this);
		
		changeVisibility(R.id.search,View.INVISIBLE);
		changeVisibility(R.id.fence, View.INVISIBLE);
		changeVisibility(R.id.pr, View.INVISIBLE);
		changeVisibility(R.id.leftArrow, View.INVISIBLE);
		changeVisibility(R.id.rightArrow, View.INVISIBLE);
	
		transit.setupRoutes(this,getResources().openRawResource(R.raw.route_manifest));
	
		manager = (LocationManager) this.getSystemService(Context.LOCATION_SERVICE);
		listener = new LocationListener() {
			
			public void onStatusChanged(String arg0, int arg1, Bundle arg2) {}
			public void onProviderEnabled(String arg0) {}
			public void onProviderDisabled(String arg0) {}
			public void onLocationChanged(Location currentLocation) {
				
				transit.setBusPos(currentLocation.getLatitude(), currentLocation.getLongitude(), currentLocation.getBearing());
				TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);

				if(transit.onTrack())changeVisibility(R.id.fence, View.INVISIBLE);
				else changeVisibility(R.id.fence, View.VISIBLE);
				if(transit.isApeshit()) changeVisibility(R.id.search, View.INVISIBLE);
				else changeVisibility(R.id.search, View.VISIBLE);
				
				if(transit.onTrack() && transit.isApeshit()){
			
					//on the fixed route path
					if(transit.atStop()){
						speakToMe("Approaching "+ transit.currentStop());
						textBOT.setText(transit.nextStop());
					}
					else textBOT.setText(transit.currentStop());
					
				}else{
					
					//bus has gone off the fixed route path (apeshit)
					if(transit.stopOffPath()){
						speakToMe("Approaching " + transit.currentStop());
						textBOT.setText(transit.nextStop());
						transit.setApeshit(true);
					}
					else textBOT.setText(transit.currentStop());
				}
			}
		};
	
		transit.selectRoute("0");
		setRoute();
    }

	@Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }
	
	public void setRoute(){
		
		TextView textTOP = (TextView) findViewById(R.id.displayTOP);
		TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);
		TextView textMID = (TextView) findViewById(R.id.displayMID);
		
		//route = null && pr = null
		if(transit.selectFocus() == null && transit.prFocus() == null){
			textTOP.setText("No Route Pattern Set");
			textMID.setText("No P/R Code set");
			textBOT.setText("");
			changeVisibility(R.id.pr, View.INVISIBLE);
		}
		
		//route = null && pr != null
		else if(transit.selectFocus() == null && transit.prFocus() != null){
		
				textTOP.setText("No Route Pattern Set");
				textMID.setText(transit.prFocus().prMsg());
				textBOT.setText("");

				if(!transit.prFocus().iD().equals("0")) changeVisibility(R.id.pr, View.VISIBLE);
			
		}
		
		//route != null && pr = null
		//route != null && pr != null
		else if(transit.selectFocus() != null){
			
			if(transit.selectFocus().size()>1){ //more than one route with the same code!
				transit.setUIFocus(10);
				transit.setFocus(transit.selectFocus().get(0));
				changeVisibility(R.id.rightArrow, View.VISIBLE);
				
				textTOP.setText(transit.routeName() + " " + transit.headSign());
				textMID.setText("");
				textBOT.setText("Select Destination");
				
			}else{
				
				transit.setFocus(transit.selectFocus().get(0));
			
				textTOP.setText(transit.routeName() + " " + transit.headSign());
				textBOT.setText(transit.routeFocus().headStop());

				if(transit.prFocus()!=null){
					if(!transit.prFocus().iD().equals("0"))changeVisibility(R.id.pr, View.VISIBLE);
					textMID.setText(transit.prFocus().prMsg());
				}else{
					textMID.setText("");
				}
				
				transit.setApeshit(false);
				manager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 500, 0, listener);
			}
		}	
	}
	
	private void UI_multiSelect(int iD){
		
		TextView textTOP = (TextView) findViewById(R.id.displayTOP);
		TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);
		TextView textMID = (TextView) findViewById(R.id.displayMID);
		
		switch(iD){
			case R.id.buttonSet: //accepted
				
				changeVisibility(R.id.leftArrow, View.INVISIBLE);
				changeVisibility(R.id.rightArrow, View.INVISIBLE);
				
				transit.setFocus(transit.selectFocus().get(transit.multiDest()));
				transit.removeUnusedFocus(transit.multiDest());
				textTOP.setText(transit.routeName() + " " + transit.headSign());
				textBOT.setText(transit.routeFocus().headStop());
				
				if(transit.prFocus()!=null){
					if(!transit.prFocus().iD().equals("0"))changeVisibility(R.id.pr, View.VISIBLE);
					textMID.setText(transit.prFocus().prMsg());
				}else{
					textMID.setText("");
				}

				transit.setApeshit(false);
				manager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 500, 0, listener);
				
				transit.setMulti(0);
				transit.setUIFocus(0);
				break;
		}
	}
	
	private void UI_PR(int iD){
		boolean addInput = true;

		Button keyClear = (Button) findViewById(R.id.buttonClear);
		keyClear.setText("BKSP");
		TextView textTOP = (TextView) findViewById(R.id.displayTOP);
		TextView textMID = (TextView) findViewById(R.id.displayMID);
		TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);
	
		if(textBOT.getText().toString().length()>12){addInput = false;}
		
		switch (iD) {
		case R.id.button0:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "0");
			break;
		case R.id.button1:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "1");
			break;
		case R.id.button2:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "2");
			break;
		case R.id.button3:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "3");
			break;
		case R.id.button4:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "4");
			break;
		case R.id.button5:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "5");
			break;
		case R.id.button6:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "6");
			break;
		case R.id.button7:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "7");
			break;
		case R.id.button8:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "8");
			break;
		case R.id.button9:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "9");
			break;
		case R.id.buttonClear:
			if(transit.PRStart()){
		
				changeVisibility(R.id.pr, View.INVISIBLE);
				
				manager.removeUpdates(listener);
				keyClear.setOnLongClickListener(this);
				if(transit.routeFocus()!=null) transit.resetApproach();
				
				textTOP.setText("Enter P/R Code");
				textMID.setText("");
				textBOT.setText("");
				transit.setPRStart(false);
				
			}else if(textBOT.getText().toString().length()>0) textBOT.setText(textBOT.getText().toString().substring(0,textBOT.getText().toString().length()-1));
			break;
		case R.id.buttonSet:

			transit.selectPR(textBOT.getText().toString());
			setRoute();
			keyClear.setOnLongClickListener(null);
			transit.setPRStart(true);
			transit.setUIFocus(0);
			keyClear.setText("P/R");
			break;
		}
	}
	
	private void UI_Destination(int iD){
		boolean addInput = true;
		
		Button keyClear = (Button) findViewById(R.id.buttonClear);
		keyClear.setText("BKSP");
		TextView textTOP = (TextView) findViewById(R.id.displayTOP);
		TextView textMID = (TextView) findViewById(R.id.displayMID);
		TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);
	
		if(textBOT.getText().toString().length()>12){addInput = false;}
		
		switch (iD) {
		case R.id.button0:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "0");
			break;
		case R.id.button1:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "1");
			break;
		case R.id.button2:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "2");
			break;
		case R.id.button3:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "3");
			break;
		case R.id.button4:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "4");
			break;
		case R.id.button5:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "5");
			break;
		case R.id.button6:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "6");
			break;
		case R.id.button7:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "7");
			break;
		case R.id.button8:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "8");
			break;
		case R.id.button9:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "9");
			break;
		case R.id.buttonClear:
			if(textBOT.getText().toString().length()>0) textBOT.setText(textBOT.getText().toString().substring(0,textBOT.getText().toString().length()-1));
			break;
		case R.id.buttonSet:
			
			if(transit.isSetCode()){
				
				manager.removeUpdates(listener);
				keyClear.setOnLongClickListener(this);
				if(transit.routeFocus()!=null) transit.resetApproach();
				
				changeVisibility(R.id.search, View.INVISIBLE);
				
				textTOP.setText("Destination Number");
				textMID.setText("");
				textBOT.setText("");
				
				transit.setCode(false);
			}
			else{
	
				transit.selectRoute(textBOT.getText().toString());
				transit.setUIFocus(0);
				setRoute();
				keyClear.setOnLongClickListener(null);
				keyClear.setText("P/R");
				transit.setCode(true);
			}
			break;
		}
	}
	
	public void onClick(View cue){
  
  			if(transit.getUIFocus()==0) transit.setUIFocus(cue.getId());
  			
  			switch(transit.getUIFocus()){
	  			case R.id.buttonClear:
	  				UI_PR(cue.getId());
	  				break;
	  			case R.id.buttonSet:
	  				UI_Destination(cue.getId());
	  				break;
	  			case R.id.button0:
	  				if(transit.routeFocus()!=null)speakToMe(transit.terminal());
	  				transit.setUIFocus(0);
	  				break;
	  			case R.id.button5:
	  				speakToMe("STOP REQUESTED");
	  				transit.setUIFocus(0);
	  				break;
	  			case 10:
	  				UI_multiSelect(cue.getId());
	  				break;
	  			default:
	  				transit.setUIFocus(0);
  			}
	}
	  	
	public boolean onLongClick(View arg0) {

		TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);
		textBOT.setText("");
		return false;}

	
	public void onGesturePerformed(GestureOverlayView arg0, Gesture g) {

		// TODO Auto-generated method stub
		ArrayList<Prediction> predictions = gls.recognize(g);
		Log.i("GESTURE","Gesture called!");
		if(predictions.size()>0){
			Prediction prediction = predictions.get(0);
			if(prediction.score>1){
				String s = prediction.name;
				
				Log.i("GESTURE",s);
				
				if(s.contains("leftSwipe")){

					TextView textTOP = (TextView) findViewById(R.id.displayTOP);
					TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);
					TextView textMID = (TextView) findViewById(R.id.displayMID);
					
					if(transit.multiDest()>0){
						
						transit.setMulti(transit.multiDest()-1);
						if(transit.multiDest()==0) changeVisibility(R.id.leftArrow, View.INVISIBLE);
						else changeVisibility(R.id.leftArrow, View.VISIBLE);
						if(transit.multiDest()==transit.selectFocus().size()-1) changeVisibility(R.id.rightArrow, View.INVISIBLE);
						else changeVisibility(R.id.rightArrow, View.VISIBLE);
						
						transit.setFocus(transit.selectFocus().get(transit.multiDest()));
						textTOP.setText(transit.routeName() + " " + transit.headSign());
						textMID.setText("");
						textBOT.setText("Select Destination");
					}
				}
				else if(s.contains("rightSwipe")){

					TextView textTOP = (TextView) findViewById(R.id.displayTOP);
					TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);
					TextView textMID = (TextView) findViewById(R.id.displayMID);
					
					if(transit.multiDest()<transit.selectFocus().size()-1){
						transit.setMulti(transit.multiDest()+1);
						
						if(transit.multiDest()==0) changeVisibility(R.id.leftArrow, View.INVISIBLE);
						else changeVisibility(R.id.leftArrow, View.VISIBLE);
						if(transit.multiDest()==transit.selectFocus().size()-1) changeVisibility(R.id.rightArrow, View.INVISIBLE);
						else changeVisibility(R.id.rightArrow, View.VISIBLE);
						
						transit.setFocus(transit.selectFocus().get(transit.multiDest()));
						textTOP.setText(transit.routeName() + " " + transit.headSign());
						textMID.setText("");
						textBOT.setText("Select Destination");	
					}
				}
			}
		}
	
	}


}

