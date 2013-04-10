package com.example.transittalker;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

import android.content.Context;

public class FileIO {
	private main instance;
	
	public FileIO(main activity){
		instance = activity;
	}
	
	public void saveFile(String fileName,ByteBuffer bbf){
			FileOutputStream fos = null;
			try {
				fos = instance.openFileOutput(fileName,Context.MODE_PRIVATE);
				fos.write(bbf.array());
				fos.close();
			} 
			catch (FileNotFoundException e) {e.printStackTrace();} 
			catch (IOException e) {e.printStackTrace();}
	}
	
	public InputStream getFileStream(String fileName){
		InputStream fis = null;
		try {
			fis = instance.openFileInput(fileName);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return null;
		}
		return fis;
	}
}
