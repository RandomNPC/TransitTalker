package com.example.transittalker;

import java.util.HashMap;
import java.util.Locale;

import android.speech.tts.TextToSpeech;

public class TalkToMe implements TextToSpeech.OnInitListener{
	
	private TextToSpeech tts;
	private Mainspace instance;
	private HashMap<String,String> params;
	
	public TalkToMe(Mainspace activity){
		this.instance = activity;
		this.tts = new TextToSpeech(this.instance,this);
		this.params = null;
	}
	
	public void speak(String text){
		if(!this.tts.isSpeaking())this.tts.speak(text, TextToSpeech.QUEUE_FLUSH,this.params);
	}

	public void onInit(int status) {
		if(status!=TextToSpeech.ERROR){
			this.tts.setLanguage(Locale.US);
		}
	}
	
}
