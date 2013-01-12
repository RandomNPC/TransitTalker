package com.example.talktomebus;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class Tbug {

	BufferedWriter fos;
	
	private void open(){
		try {
			fos = new BufferedWriter(new FileWriter("debug.txt", true));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void close(){
		try {
			fos.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void write(String message){
		try {
			fos.write(message);
			fos.newLine();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	void debug(String message){
		
		open();
		write(message);
		close();
	}
	
}
