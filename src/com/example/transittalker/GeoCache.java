package com.example.transittalker;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;

public class GeoCache implements LocationListener{

	private LocationManager manager;
	private Listener listen;
	
	public GeoCache(Mainspace instance){
		this.manager = (LocationManager) instance.getSystemService(Context.LOCATION_SERVICE);
		this.listen = instance;
	}

	public interface Listener{ 
		public void locationUpdated(Location obj);
	}
	
	public void onLocationChanged(Location location) {
		listen.locationUpdated(location);	
	}

	public void onProviderDisabled(String provider) {}

	public void onProviderEnabled(String provider) {}

	public void onStatusChanged(String provider, int status, Bundle extras) {}

	public void startListening(int minTime, int minDistance){
		manager.requestLocationUpdates(LocationManager.GPS_PROVIDER, minTime, minDistance, this);
	}
	
	public void stopListening(){
		manager.removeUpdates(this);
	}
	
}
