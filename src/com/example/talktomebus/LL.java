package com.example.talktomebus;

import android.location.Location;
import android.util.Log;
import android.widget.TextView;

public class LL {
	private Node head;
	private Node tail;
	private String routeCode;
	private String headSign;
	private String routeName;
	
	public LL() {
		head = null;
		tail = null;
		routeCode = "";
		headSign = "";
		routeName = "";
	}
	
	public String getRC(){return routeCode;}
	public String getHS(){return headSign;}
	public String getRN(){return routeName;}
	public String getbusStop(){
		if(head.getNext()!=null) return head.getNext().getStop();
		else return head.getStop();
	}

	public void setRouteInfo(String rC,String rN, String hS){
		routeCode = rC;
		routeName = rN;
		headSign = hS;
	}
	
	public void addStop(double lat,double lon, String sN, String dir) {
		Node create = new Node(lat,lon,sN,dir,false,null);
		if (head == null)
			head = create;
		else {
			tail.setNext(create);
		}
		tail = create;
	}
	
	//debug function
	public void output() {
		for(Node jux = head; jux != null; jux=jux.getNext()){
			Log.i("",jux.getLat() + " " + jux.getLon() + " " +jux.getStop()+" " + jux.getDir());
		}
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
	
	private double bustoStop(double stopLat,double stopLong,double busLat,double busLong){
		
		Location bus = new Location("busLocation");
		bus.setLatitude(busLat);
		bus.setLongitude(busLong);
		Location stop = new Location("busStop");
		stop.setLatitude(stopLat);
		stop.setLongitude(stopLong);
		double finalResult = bus.distanceTo(stop);
		bus = stop = null;	
		return finalResult;
	
	}
	
	public String approach(double bLat, double bLong, double minDistance, double bearing,TextView stop){
		
		for(Node checkStop = head; checkStop!=null; checkStop=checkStop.getNext()){

			if(bustoStop(bLat,bLong,checkStop.getLat(),checkStop.getLon())< minDistance && inDirection(bearing,checkStop.getDir()) && !checkStop.getPass()){
				checkStop.setPass(true);
				stop.setText(checkStop.getnextStop());
				return checkStop.getStop();
			}
		}
		
		return "";
	}
	
	public void resetApproach(){
		Node checkStop = head;	
		if(head!=null){		
			for(checkStop = head; checkStop!=null; checkStop=checkStop.getNext()){checkStop.setPass(false);}
		}	
	}
	
	
}


