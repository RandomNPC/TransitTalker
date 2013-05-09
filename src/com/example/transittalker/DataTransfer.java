package com.example.transittalker;

import java.io.InputStream;

import android.content.SharedPreferences;
import android.provider.Settings;

public class DataTransfer{
	
	private Mainspace instance;
	private Client myClient;
	private SharedPreferences spf;
	private FileIO fio;
	
	public DataTransfer(Mainspace instance){
		this.instance = instance;
		this.fio = new FileIO(instance);
		this.spf = instance.getSharedPreferences("sharedPreferences",0);
		this.myClient = new Client(Settings.Secure.getString(instance.getContentResolver(),Settings.Secure.ANDROID_ID), spf.getString("hash", "NO_CHECKSUM"));
	
		//this.myClient.connectToServer("horc.net", 65499);
	
		if(myClient.getXmlData()!=null){
			//saving file
			fio.saveFile("route_manifest.xml", myClient.getXmlData());
			SharedPreferences.Editor editMe = spf.edit();
			editMe.putString("hash", myClient.getHash());
			editMe.commit();
		}else{
			//not saving file
		}
	}
	
	public InputStream getData(){
		
		if(fio.getFileStream("route_manifest.xml")!=null){ //file exists
			return fio.getFileStream("route_manifest.xml");
		}	
		else{//use system default, file does not exist
			return instance.getResources().openRawResource(R.raw.route_manifest);
		}
	}

	
}
