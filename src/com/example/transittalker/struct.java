package com.example.transittalker;

import java.util.LinkedList;
import java.util.List;

import android.location.Location;
import android.util.Log;


//import android.location.Location;


@SuppressWarnings("unused")
public class struct {
	private double minDistance;
	private double busLat;
	private double busLon;
	private double busBearing;
	private busStop head;
	private busStop tail;
	private busStop pos;
	private String routeCode;
	private String headSign;
	private String routeName;
	private String atStop;
	private String nextStop;
	private List<path> pathWay;
	
	struct(double min){
		minDistance = min;
		busLat = 0;
		busLon = 0;
		busBearing = 0;
		head = null;
		tail = null;
		pos = null;
		routeCode = "";
		headSign = "";
		routeName = "";
		atStop = "";
		nextStop = "";
		pathWay = new LinkedList<path>();
	}
	//universal functions
	private boolean distanceTo(double lat, double lon){
		
		Location bus = new Location("busLocation");
		bus.setLatitude(busLat);
		bus.setLongitude(busLon);
		Location stop = new Location("busStop");
		stop.setLatitude(lat);
		stop.setLongitude(lon);
		double finalResult = bus.distanceTo(stop);
		bus = stop = null;	
		if(finalResult < minDistance) return true;
		else return false;
	}
	private boolean inDirection(double bearing, String busdirection){
		
		if(busdirection.equals("NB")){
			if((bearing >=270 && bearing <= 360) || (bearing >=0 && bearing <= 90)) return true;
			else return false;
		}
		else if(busdirection.equals("SB")){
			if(bearing >=90 && bearing <= 270) return true;
			else return false;
		}
		else if(busdirection.equals("EB")){
			if(bearing >=0 && bearing <= 180) return true;
			else return false;
		}
		else if(busdirection.equals("WB")){
			if(bearing >=180 && bearing <= 360) return true;
			else return false;
		}
		else return false;	
	}
		
	//Bus Location
	void setBusPos(double lat, double lon, double bear){
		busLat = lat;
		busLon = lon;
		busBearing = bear;
	}

	//Route info members
	public void setRouteInfo(String rC,String rN, String hS){
		routeCode = rC;
		routeName = rN;
		headSign = hS;
	}	
	
	String routeCode(){return routeCode;}
	String routeName(){return routeName;}
	String headSign(){return headSign;}
	
	//Pathway members
	void addTopath(double lat, double lon){
		pathWay.add(new path(lat,lon));
	}

	boolean onTrack(){
		for(path p: pathWay){
			if(distanceTo(p.pathLat(),p.pathLon()))	return true;
		}
		return false;
	}

	//Linked List members
	public void addStop(double lat,double lon, String sN, String dir) {
		busStop create = new busStop(lat,lon,sN,dir,false,null);
		if (head == null)
			head = create;
		else {
			tail.setNext(create);
		}
		tail = create;
		create = null;
	}

	public boolean atStop(){
		if(pos==null) pos = head;
		atStop = pos.getStopName();
		if(!pos.isSilenced() && distanceTo(pos.getLat(),pos.getLon()) && inDirection(busBearing,pos.getDir())){
			pos.setSilence(true);
			if(pos.getNext()!=null){
				pos = pos.getNext();
				nextStop = pos.getStopName();
			}
			return true;
		}
		return false;
	} 

	public boolean stopOffPath(){
	
		for(busStop l = pos; l!=null; l=l.getNext()){
			if(!l.isSilenced() && distanceTo(l.getLat(),l.getLon()) && inDirection(busBearing,l.getDir())){
				l.setSilence(true);
				atStop = l.getStopName();
				if(l!=tail){
					pos = l.getNext();
					nextStop = pos.getStopName();
				}
				return true;
			}
		}
		return false;
	}
	
	String nextStop(){return nextStop;}
	String currentStop(){return atStop;}
	
	public void resetApproach(){
		busStop checkStop = head;	
		if(head!=null){		
			for(checkStop = head; checkStop!=null; checkStop=checkStop.getNext()){checkStop.setSilence(false);}
		}
		pos = head;
	}
	
	
}
