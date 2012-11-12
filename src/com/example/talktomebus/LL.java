package com.example.talktomebus;

import android.location.Location;
import android.widget.TextView;

public class LL {
	private Node head;
	private Node tail;

	public LL() {
		head = null;
		tail = null;
	}

	public void addStop(String rC, String hS, double lat, double lon, String sN,String bD) {
		Node create = new Node(rC, hS, lat, lon, sN, false,null,bD);
		if (head == null)
			head = create;
		else {
			tail.setNext(create);
		}
		tail = create;

	}
	public String getHS(){return head.headSign();}
	public String getRC(){return head.routeCode();}
	public String getbusStop(){return head.getStop();}
	
	//debug function
	public void output() {
		for(Node jux = head; jux != null; jux=jux.getNext()){
			System.out.println(jux.routeCode() + " " + jux.headSign() + " " +jux.getStop()+" " + jux.stopDirection());
		}
	}
	
	boolean inDirection(double bearing, String busdirection){
		
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
	
	double bustoStop(double stopLat,double stopLong,double busLat,double busLong){
		return Math.sqrt(Math.pow((stopLat-busLat), 2)+Math.pow((stopLong-busLong), 2));
	}
	 
	public String approach(double sLg, double sLn, double minDistance,double bearing, TextView test, Location currentLocation){
		
		float[] distance = new float[1];
		
		for(Node checkStop = head; checkStop!=null; checkStop=checkStop.getNext()){
			
			Location.distanceBetween(sLg, checkStop.getLatitude(), sLn, checkStop.getLongitude(), distance);
			
			if(inDirection(bearing,checkStop.stopDirection()) && distance[0]<minDistance && !checkStop.silence()){
				checkStop.setPass(true);
				return checkStop.getStop();
			}
		}
		
		return "";
	}
	
	public void resetApproach(){
		
		Node checkStop = head;
		
		if(head!=null){		
			for(checkStop = head; checkStop!=null; checkStop=checkStop.getNext()){
				checkStop.setPass(false);
			}
		}	
	}
	
	
}

