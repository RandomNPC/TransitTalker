package com.example.talktomebus;

public class Node{
	
	private double latitude;
	private double longitude;
	private String stopName;
	private String direction;
	private boolean pass;
	private Node next;
	
	Node(){
		latitude = 0;
		longitude = 0;
		stopName = "";
		direction = "";
		pass = false;
		next = null;
	}
	
	Node(double lat,double lon, String sN, String dir, boolean pS, Node n){
		latitude = lat;
		longitude = lon;
		stopName = sN;
		direction = dir;
		pass = pS;
		next = n;
	}
	
	double getLat(){return latitude;}
	double getLon(){return longitude;}
	String getStop(){return stopName;}
	String getDir(){return direction;}
	String getnextStop(){
		if(getNext()!=null) return next.getStop();
		else return getStop();}
	boolean getPass(){return pass;}
	void setPass(boolean pS){pass = pS;}
	Node getNext(){return next;}
	void setNext(Node n){next = n;}
	
	
	
}
