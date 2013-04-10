package com.example.transittalker;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map.Entry;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.gesture.Gesture;
import android.gesture.GestureLibraries;
import android.gesture.GestureLibrary;
import android.gesture.GestureOverlayView;
import android.gesture.GestureOverlayView.OnGesturePerformedListener;
import android.gesture.GestureStore;
import android.gesture.Prediction;
import android.graphics.Color;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Bundle;
import android.provider.Settings;
import android.speech.tts.TextToSpeech;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;

public class main extends Activity implements OnClickListener, OnLongClickListener, OnGesturePerformedListener{

	LocationListener listener;
	LocationManager manager;
	TextToSpeech tts;
	TransitMain transit = new TransitMain(100);
	GestureLibrary gls;
	GestureOverlayView golw;
	TextView textTOP;
	TextView textBOT;
	TextView textMID;
	HashMap<String,String> pronounce = new HashMap<String,String>();
	FileIO fio = new FileIO(this);
	SharedPreferences spf;
	Client myClient;
	
	
	String speak(String obj){
		
		obj = obj.toLowerCase(Locale.US);
		
		int index = -1;
		
		Iterator<Entry<String, String>> it = pronounce.entrySet().iterator();
		while(it.hasNext()){
			
			String key = it.next().getKey();
			
			index = obj.indexOf(key);
			if(index>-1){
				obj = obj.replace(key,pronounce.get(key));
			}
		}
		
		return obj;
	}
	
	private void pronounce_toLower(String a, String b){
		pronounce.put(a.toLowerCase(Locale.getDefault()),b.toLowerCase(Locale.getDefault()));
	}
	
	//TextToSpeech
	void speakToMe(final String speakStopName) {
		
		
		tts = new TextToSpeech(main.this, new TextToSpeech.OnInitListener() {

			public void onInit(int status) {
				if (status != TextToSpeech.ERROR) {
					//HashMap<String, String> params = new HashMap<String, String>();
					//params.put(TextToSpeech.Engine.KEY_FEATURE_NETWORK_SYNTHESIS,"true");
					
					tts.setLanguage(Locale.US);
					tts.speak(speak(speakStopName), TextToSpeech.QUEUE_ADD, null);
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
		//setRequestedOrientation(0); //stupid method crashes the app!!!!!!AAARGGGHH RRAAAGEE
		getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
		AudioManager aM = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
		aM.setStreamVolume(AudioManager.STREAM_MUSIC, aM.getStreamMaxVolume(AudioManager.STREAM_MUSIC), 0);
		
		//TextView
		textTOP = (TextView) findViewById(R.id.displayTOP);
		textBOT = (TextView) findViewById(R.id.displayBOTTOM);
		textMID = (TextView) findViewById(R.id.displayMID);
		
		//Gesture
		golw = (GestureOverlayView) findViewById(R.id.gesturearea);
		
		golw.setGestureColor(Color.BLUE);
		golw.setGestureVisible(true);
		golw.setUncertainGestureColor(Color.RED);
		golw.setGestureStrokeType(GestureOverlayView.GESTURE_STROKE_TYPE_MULTIPLE);
		
		golw.addOnGesturePerformedListener(this);
		
		gls = GestureLibraries.fromRawResource(this,R.raw.gestures);
		gls.setOrientationStyle(GestureStore.ORIENTATION_INVARIANT);
		gls.setSequenceType(GestureStore.SEQUENCE_INVARIANT);
		
		
		if(!gls.load()){
			Log.i("GESTURELIB","Gesture Library failed to load");
		}
		
		
		pronounce_toLower("Ave", "Avenue");
		pronounce_toLower("HS", "High School");
		pronounce_toLower("Blvd", "Boulevard");
		pronounce_toLower("Ln","Lane");
		pronounce_toLower("Rd", "Road");
		
		
		//Buttons
		ImageButton keyClear = (ImageButton) findViewById(R.id.buttonClear);
		ImageButton keySet = (ImageButton) findViewById(R.id.buttonSet);
		
		keySet.setOnClickListener(this);
		keyClear.setOnClickListener(this);
		
		//Images
		changeVisibility(R.id.search,View.INVISIBLE);
		changeVisibility(R.id.fence, View.INVISIBLE);
		changeVisibility(R.id.pr, View.INVISIBLE);
		changeVisibility(R.id.leftArrow, View.INVISIBLE);
		changeVisibility(R.id.rightArrow, View.INVISIBLE);
	
		spf = getSharedPreferences("sharedPreferences", 0);
		
		//Connect to client
		//get the hash (checksum) from preferences
		myClient = new Client(Settings.Secure.getString(getContentResolver(),Settings.Secure.ANDROID_ID), spf.getString("hash", "NO_CHECKSUM"));
		myClient.connectToServer("horc.net", 65499);
		
		if(myClient.getXmlData()!=null){
			Log.i("INFO","Saving file");
			fio.saveFile("route_manifest.xml", myClient.getXmlData());
			SharedPreferences.Editor editMe = spf.edit();
			editMe.putString("hash", myClient.getHash());
			editMe.commit();
		}else{
			Log.i("INFO","Not saving file");
		}
		
		
		
		//check to see if the file exists
		if(fio.getFileStream("route_manifest.xml")!=null){
			Log.i("INFO","file exists");
			transit.setupRoutes(this,fio.getFileStream("route_manifest.xml"));
			
		}	
		else{
			//use system default
			Log.i("INFO","using default");
			transit.setupRoutes(this,getResources().openRawResource(R.raw.route_manifest));
		}
		Log.i("INFO","Whats up I am done");
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
				manager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, 0, listener);
			}
		}	
	}
	
	private void UI_multiSelect(int iD){
		
		
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
				manager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, 0, listener);
				
				transit.setMulti(0);
				transit.setUIFocus(0);
				break;
		}
	}
	
	private void UI_PR(int iD){
		
		ImageButton keyClear = (ImageButton) findViewById(R.id.buttonClear);
		keyClear.setOnLongClickListener(this);
		keyClear.setImageResource(R.drawable.bkspbutton);
		
		switch(iD){
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

				}else if(textBOT.getText().toString().length()>0) 
					textBOT.setText(textBOT.getText().toString().substring(0,textBOT.getText().toString().length()-1));
				break;
			case R.id.buttonSet:
				transit.selectPR(textBOT.getText().toString());
				setRoute();
				keyClear.setOnLongClickListener(null);
				transit.setPRStart(true);
				transit.setUIFocus(0);
				keyClear.setImageResource(R.drawable.prbutton);
				break;
		}
	}
	
	private void UI_Destination(int iD){
		ImageButton keyClear = (ImageButton) findViewById(R.id.buttonClear);
		keyClear.setOnLongClickListener(this);
		keyClear.setImageResource(R.drawable.bkspbutton);
		
		switch(iD){
			case R.id.buttonClear:
				if(textBOT.getText().toString().length()>0) 
					textBOT.setText(textBOT.getText().toString().substring(0,textBOT.getText().toString().length()-1));
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
					keyClear.setImageResource(R.drawable.prbutton);
					transit.setCode(true);
				}
				break;
		}
		
	}
	
	private void classifyGesture(final String name){
		boolean addInput = true;
		
		if(textBOT.getText().toString().length()>12){addInput = false;}

		if(name.equals("leftSwipe") && transit.getUIFocus()==10){
			
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
		else if(name.equals("rightSwipe") && transit.getUIFocus()==10){
			
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
		else{
			
			if(addInput && !name.equals("rightSwipe") && !name.equals("leftSwipe")) textBOT.setText(textBOT.getText().toString() + name);
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
		
		ArrayList<Prediction> predictions = gls.recognize(g);
		if(predictions.size()>0){
			
			Prediction prediction = predictions.get(0);
		
			if(prediction.score>0) classifyGesture(prediction.name.trim());
		}
	
	}


}

