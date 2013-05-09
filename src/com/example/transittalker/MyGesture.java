package com.example.transittalker;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;


public class MyGesture extends GestureDetector.SimpleOnGestureListener implements OnTouchListener {

	private GestureDetector gd;
	private View myView;
	private Listener listen;

	private static final int SWIPE_MIN_DISTANCE = 120;
	private static final int SWIPE_MAX_OFF_PATH = 250;
	private static final int SWIPE_THRESHOLD_VELOCITY = 100;
	
	public MyGesture(Mainspace mps){
		myView = (View) mps.findViewById(R.id.gesturearea);
		gd = new GestureDetector(mps,this);
		listen = mps;
	}
	
	public interface Listener{
		void scrollto(boolean state);
	}
	
	public void enableTouchResponse(boolean status){
		if(status) myView.setOnTouchListener(this);
		else myView.setOnTouchListener(null);
	}

	@Override
	public boolean onTouch(View arg0, MotionEvent event) {
		return gd.onTouchEvent(event);
	}

	@Override
	public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
		
	      try {
	            if (Math.abs(e1.getY() - e2.getY()) > SWIPE_MAX_OFF_PATH) return true;
	            
	            // right to left swipe
	            if (e1.getX() - e2.getX() > SWIPE_MIN_DISTANCE && Math.abs(velocityX) > SWIPE_THRESHOLD_VELOCITY) {
	            	listen.scrollto(true);
	            } else if (e2.getX() - e1.getX() > SWIPE_MIN_DISTANCE && Math.abs(velocityX) > SWIPE_THRESHOLD_VELOCITY) {
	                //left to right flip
	            	listen.scrollto(false);
	            }
	            
	       } catch(Exception e) {
	            // nothing
	        }
		
		return true;
	}

	
	
	
	

	
}