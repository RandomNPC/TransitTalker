package com.example.transittalker;

import java.util.Locale;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class main extends Activity implements OnClickListener, OnLongClickListener{

	LocationListener listener;
	LocationManager manager;
	TextToSpeech tts;
	TransitMain transit = new TransitMain(100);
	
	//TextToSpeech
	void speakToMe(final String speakStopName) {
		tts = new TextToSpeech(main.this, new TextToSpeech.OnInitListener() {

			public void onInit(int status) {
				if (status != TextToSpeech.ERROR) {
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

        //Settings
		setRequestedOrientation(0);
		getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
		AudioManager aM = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
		aM.setStreamVolume(AudioManager.STREAM_MUSIC, aM.getStreamMaxVolume(AudioManager.STREAM_MUSIC), 0);

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
		keyClear.setOnLongClickListener(this);
		
		changeVisibility(R.id.search,View.INVISIBLE);
		changeVisibility(R.id.fence, View.INVISIBLE);
		changeVisibility(R.id.pr, View.INVISIBLE);

		transit.setupRoutes();
		transit.setupPR();
		
		manager = (LocationManager) this.getSystemService(Context.LOCATION_SERVICE);
		listener = new LocationListener() {
			
			public void onStatusChanged(String arg0, int arg1, Bundle arg2) {}
			public void onProviderEnabled(String arg0) {}
			public void onProviderDisabled(String arg0) {}
			public void onLocationChanged(Location currentLocation) {
				
				transit.setBusPos(currentLocation.getLatitude(), currentLocation.getLongitude(), currentLocation.getBearing());
				TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);

				if(transit.onTrack()) changeVisibility(R.id.fence, View.VISIBLE);
				else changeVisibility(R.id.fence, View.INVISIBLE);
				if(transit.isApeshit()) changeVisibility(R.id.search, View.VISIBLE);
				else changeVisibility(R.id.search, View.INVISIBLE);
				
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

		transit.selectRoute("0","0");
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
		
		//route = null && pr = null
		if(transit.routeFocus() == null && transit.prFocus() == null){
			textTOP.setText("No P/R Code set");
			textBOT.setText("No route pattern set");
			changeVisibility(R.id.pr, View.INVISIBLE);
		}
		
		//route = null && pr != null
		else if(transit.routeFocus() == null && transit.prFocus() != null){
		
				textTOP.setText("P/R Code Set: " + transit.prFocus().prMsg());
				textBOT.setText("No route pattern set");

				if(!transit.prFocus().iD().equals("0")) changeVisibility(R.id.pr, View.VISIBLE);
			
		}
		
		//route != null && pr = null
		else if(transit.routeFocus() != null && transit.prFocus() == null){
			
			textTOP.setText(transit.routeName() + " " + transit.headSign());
			textBOT.setText(transit.routeFocus().headStop());
			
			changeVisibility(R.id.pr, View.INVISIBLE);
			transit.setApeshit(false);
			manager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 500, 0, listener); 
		}
		
		//route != null && pr != null\
		else if(transit.routeFocus() != null && transit.prFocus() != null){
			
			String routeDest = transit.routeFocus().routeCode();
			transit.selectRoute(routeDest,transit.prFocus().iD());
			if(transit.routeFocus()==null)transit.selectRoute(routeDest);
			
			textTOP.setText(transit.routeName() + " " + transit.headSign() + " " + transit.prFocus().prMsg());
			textBOT.setText(transit.routeFocus().headStop());
			
			transit.setApeshit(false);
			if(!transit.prFocus().iD().equals("0"))changeVisibility(R.id.pr, View.VISIBLE);
			manager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 500, 0, listener); 
			
		}
		
	}
	
	private void UI_PR(int iD){
		boolean addInput = true;

		Button keyClear = (Button) findViewById(R.id.buttonClear);
		keyClear.setText("BKSP");
		TextView textTOP = (TextView) findViewById(R.id.displayTOP);
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
				
				if(transit.routeFocus()!=null) transit.resetApproach();
				
				textTOP.setText("Enter P/R Code");
				textBOT.setText("");
				transit.setPRStart(false);
				
			}else if(textBOT.getText().toString().length()>0) textBOT.setText(textBOT.getText().toString().substring(0,textBOT.getText().toString().length()-1));
			break;
		case R.id.buttonSet:

			transit.selectPR(textBOT.getText().toString());
			setRoute();
			
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
				
				if(transit.routeFocus()!=null) transit.resetApproach();
				
				changeVisibility(R.id.search, View.INVISIBLE);
				
				textTOP.setText("Destination Number");
				textBOT.setText("");
				
				transit.setCode(false);
			}
			else{
	
				transit.selectRoute(textBOT.getText().toString());
				setRoute();
		
				transit.setUIFocus(0);
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
	  				if(transit.routeFocus()!=null){
	  					speakToMe(transit.routeName() + " Line, to, " + transit.headSign().replaceAll("/", ",") +", "+ transit.terminal());
	  				}
	  				transit.setUIFocus(0);
	  				break;
	  			case R.id.button5:
	  				speakToMe("STOP REQUESTED");
	  				transit.setUIFocus(0);
	  				break;
	  			default:
	  				transit.setUIFocus(0);
  			}
	}
	  	
	public boolean onLongClick(View arg0) {

		TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);
		if(transit.getUIFocus()!=0)textBOT.setText("");
		return false;}
}

