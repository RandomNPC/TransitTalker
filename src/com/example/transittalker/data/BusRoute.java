package com.example.transittalker.data;

import java.util.LinkedList;
import java.util.List;

import android.location.Location;

public class BusRoute {
	
	private BusStop head;
	private BusStop tail;
	private BusStop pos;
	private double minDistance;
	private String routeName;
	private String routeDest;
	private String routeCode;
	private String announce;
	private Location buspos;
	private List<Location> busPath;
	private Listener listen;
	
	public BusRoute(String rc, String rn, String rd,String an,double min, Route context){
		
		listen = context;
		head = null;
		pos = null;
		tail = null;
		buspos = null;
		minDistance = min;
		routeName = rn;
		routeDest = rd;
		routeCode = rc;
		announce = an;
		busPath = new LinkedList<Location>();
	}
	
	public interface Listener{
		public void br_busApproaching(BusStop stop);
	}
	
	private float convertDirection(String dir){
		float result = 0;
		if(dir.equals("NB")) result = 0;
		else if(dir.equals("WB")) result = 90;
		else if(dir.equals("SB")) result = 180;
		else if(dir.equals("EB")) result = 270;
		return result;
	}
	
	private boolean inDirection(Location d){
		float bearing = buspos.getBearing();
		if(d.getBearing()==0){if((bearing >=270 && bearing <= 360) || (bearing >=0 && bearing <= 90)) return true;}
		else if(d.getBearing()==180){if(bearing >=90 && bearing <= 270) return true;}
		else if(d.getBearing()==270){if(bearing >=0 && bearing <= 180) return true;}
		else if(d.getBearing()==90){if(bearing >=180 && bearing <= 360) return true;}
		return false;	
	}
	
	public void br_addBusStop(double lat,double lon, String stopName, String dir){
		
		Location l = new Location(stopName);
		l.setLatitude(lat);
		l.setLongitude(lon);
		l.setBearing(convertDirection(dir));
		
		BusStop bs = new BusStop(l,true);
		if(head==null){
			pos = bs;
			head = bs;
		}
		else{
			tail.bs_setNext(bs);
			tail.bs_setSil(false);
			bs.bs_setPrev(tail);
		}
		tail = bs;
		bs = null;
		l = null;
	}
	
	public void br_addtoPath(double lat, double lon){
		Location loc = new Location("");
		loc.setLatitude(lat);
		loc.setLongitude(lon);
		busPath.add(loc);
		loc = null;
	}
	
	public void br_setBusPos(Location bps){buspos = bps;}
	
	public boolean br_onTrack(){
		for(Location bp: busPath){
			if(buspos.distanceTo(bp)<(float)minDistance) return true;
		}
		return false;
	}
	
	public void br_atStop(){
		if(!pos.bs_Sil() && buspos.distanceTo(pos.bs_Loc())<(float)minDistance && inDirection(pos.bs_Loc())){
			pos.bs_setSil(true);
			if(pos!=tail)tail.bs_setSil(false);
			if(pos.bs_Next()!=null){
				pos=pos.bs_Next();
			}
			listen.br_busApproaching(pos);
			return;
		}
		listen.br_busApproaching(null);
	}
	
	public void br_stopOffPath(){
		for(BusStop l = pos; l!=null; l=l.bs_Next()){
			if(!l.bs_Sil() && buspos.distanceTo(l.bs_Loc())<minDistance && inDirection(l.bs_Loc())){
				l.bs_setSil(true);
				if(l!=tail)tail.bs_setSil(false);
				if(l.bs_Next()!=null){
					pos=l.bs_Next();
				}
				listen.br_busApproaching(pos);
				return;
			}
		}
		listen.br_busApproaching(null);
	}
	
	public void br_reset(){
		for(BusStop checkStop = head; checkStop!=null; checkStop=checkStop.bs_Next()){checkStop.bs_setSil(false);}
		pos = head;
	}
	
	public BusStop br_first(){return head;}
	public String br_an(){return announce;}
	public String br_rn(){return routeName;}
	public String br_rc(){return routeCode;}
	public String br_rd(){return routeDest;}
	
}
