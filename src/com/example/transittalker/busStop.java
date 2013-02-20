package com.example.transittalker;

public class busStop {

	private double latitude;
	private double longitude;
	private String stopName;
	private String direction;
	private boolean silence;
	private busStop next;
	private busStop prev;

	public busStop(){
		latitude = 0;
		longitude = 0;
		stopName = "";
		direction="";
		silence = false;
		next = null;
		prev = null;
	}
	
	public busStop(double lat,double lon, String sN, String dir, boolean sil, busStop n,busStop p){
		latitude = lat;
		longitude = lon;
		stopName = sN;
		direction= dir;
		silence = sil;
		next = n;
		prev = p;
	}
	
	public double getLat(){return latitude;}
	public double getLon(){return longitude;}
	public String getStopName(){return stopName;}
	public String getDir(){return direction;}
	public boolean isSilenced(){return silence;}
	public void setSilence(boolean sil){silence = sil;}
	busStop getNext(){return next;}
	busStop getPrev(){return prev;}
	void setNext(busStop n){next = n;}
	void setPrev(busStop p){prev = p;}
}
