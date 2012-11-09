package com.example.talktomebus;

public class Node {
	private String routeCode;
	private String headSign;
	private double latitude;
	private double longitude;
	private String stopName;
	private boolean silence;
	private Node next;
	private String stopDirection;

	public Node() {
		routeCode = "";
		headSign = "";
		latitude = 0;
		longitude = 0;
		stopName = "";
		silence = false;
		next = null;
		stopDirection="";
	}

	public Node(String rC, String hS, double lat, double lon, String sN,boolean sil, Node nx,String bDir) {
		routeCode = rC;
		headSign = hS;
		latitude = lat;
		longitude = lon;
		stopName = sN;
		silence = sil;
		next = nx;
		stopDirection=bDir;
	}

	public String stopDirection(){
		return stopDirection;
	}
	
	public String headSign() {
		return headSign;
	}

	public String routeCode() {
		return routeCode;
	}

	public double getLatitude() {
		return latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public String getStop() {
		return stopName;
	}

	public boolean silence() {
		return silence;
	}

	public void setPass(boolean passedStop) {
		silence = passedStop;
	}

	public Node getNext() {
		return next;
	}

	public void setNext(Node n) {
		next = n;
	}
}
