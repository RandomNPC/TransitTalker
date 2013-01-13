package com.example.talktomebus;

import android.location.Location;
import android.util.Log;
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
		
		Location bus = new Location("busLocation");
		bus.setLatitude(busLat);
		bus.setLongitude(busLong);
		Location stop = new Location("busStop");
		stop.setLatitude(stopLat);
		stop.setLongitude(stopLong);
		
		double finalResult = bus.distanceTo(stop);
		
		bus = null;
		stop = null;
		
		return finalResult;
		
		//return Math.sqrt(Math.pow((stopLat-busLat), 2)+Math.pow((stopLong-busLong), 2));
	}
	
	public String approach(double bLat, double bLong, double minDistance, float bearing, TextView textTOP){
		
		for(Node checkStop = head; checkStop!=null; checkStop=checkStop.getNext()){
			Log.i("bustoStop()->",""+bustoStop(bLat,bLong,checkStop.getLatitude(),checkStop.getLongitude()));

			textTOP.setText(bLat + " " + bLong + " " + bustoStop(bLat,bLong,checkStop.getLatitude(),checkStop.getLongitude()) );

			
			if(bustoStop(bLat,bLong,checkStop.getLatitude(),checkStop.getLongitude())<minDistance && inDirection(bearing,checkStop.stopDirection()) && !checkStop.silence()){
				checkStop.setPass(true);
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

