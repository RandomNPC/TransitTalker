package com.example.transittalker.data;

import android.location.Location;

public class BusStop {
	
	private Location stop;
	private boolean silence;
	private BusStop next;
	private BusStop prev;
	
	public BusStop(Location point,boolean sil){
		stop = point;
		silence = sil;
		next = null;
		prev = null;
	}
	
	
	public Location bs_Loc(){return stop;}

	public void bs_setSil(boolean s){silence=s;}
	public void bs_setNext(BusStop n){next = n;}
	public void bs_setPrev(BusStop p){prev = p;}
	public boolean bs_Sil(){return silence;}
	public BusStop bs_Next(){return next;}
	public BusStop bs_Prev(){return prev;}

}
