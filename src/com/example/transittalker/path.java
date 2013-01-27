package com.example.transittalker;

public class path {

	private double latitude;
	private double longitude;
	
	path(){
		latitude=0;
		longitude=0;
	}
	
	path(double lat, double lon){
		latitude = lat;
		longitude = lon;
	}
	
	double pathLat(){return latitude;}
	double pathLon(){return longitude;}
	
}
