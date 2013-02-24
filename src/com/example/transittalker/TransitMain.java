package com.example.transittalker;

import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedList;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.util.Log;

@SuppressWarnings("unused")
public class TransitMain{

	private struct routeFocus;
	private prCode prFocus;
	private List<struct> route;
	private List<prCode> pRCode;
	private double minDistance;
	private boolean setCode;
	private boolean apeshit;
	private int UIfocus;
	private boolean PRStart;
	private main name;
	
	public TransitMain(double min){
		routeFocus = null;
		prFocus = null;
		route = new LinkedList<struct>();
		pRCode = new LinkedList<prCode>();
		minDistance = min;
		setCode = true;
		apeshit = false;
		UIfocus = 0;
		PRStart = true;
		name = null;
	}
	
	//universal function
	private boolean isEqual(String marco, String polo){
		if(marco.length() > 0 && polo.length() > 0 && marco.length() < 4 && polo.length()<4){
			return (Integer.parseInt(marco) == Integer.parseInt(polo))? true:false;
		}
		else return false;
		}
	
	//booleans for keypad
	public void setPRStart(boolean val) {PRStart=val;}
	public void setApeshit(boolean val){apeshit=val;}
	public void setCode(boolean val){setCode=val;}
	boolean isSetCode(){return setCode;}
	boolean isApeshit(){return apeshit;}
	boolean PRStart(){return PRStart;}
	
	//select route
	public void selectRoute(String rC){
		routeFocus = null;
		for(struct l: route){ 
			if(isEqual(rC,l.routeCode())){
				routeFocus = l;
				break;
			}
		}
	}
	
	
	public void selectRoute(String rC, String pR){
		
		routeFocus = null;
		for(struct l: route){ 
			if(isEqual(rC,l.routeCode()) && isEqual(pR,l.prCode())){
				routeFocus = l;
			}
		}
	}
	
	//return selections
	public prCode prFocus(){return prFocus;}
	public struct routeFocus(){return routeFocus;}
	
	public String terminal(){return routeFocus.terminal();}
	public String routeCode(){return routeFocus.routeCode();}
	public String routeName(){return routeFocus.routeName();}
	public String headSign(){return routeFocus.headSign();}
	public String prCode(){return routeFocus.prCode();}
	public String nextStop(){return routeFocus.nextStop();}
	public String currentStop(){return routeFocus.currentStop();}
	public boolean atStop(){return routeFocus.atStop();}
	public boolean stopOffPath(){return routeFocus.stopOffPath();}
	public boolean onTrack(){return routeFocus.onTrack();}
	public void resetApproach(){routeFocus.resetApproach();}
	public void setBusPos(double lat, double lon, double bear){routeFocus.setBusPos(lat, lon, bear);}
	public void setRouteInfo(String rC,String rN, String hS, String pR, String T){routeFocus.setRouteInfo(rC, rN, hS, pR, T);}
	
	public void setupRoutes(main activity, InputStream is){
		new loadData(activity,is).execute();
	}
	
    public class loadData extends AsyncTask<Void,Void,Void>{
    	private ProgressDialog dialog;
    	private main activity;
    	private InputStream is;
    	
    	public loadData(){}
    	
		public loadData(main main, InputStream in) {
			activity = main;
			is = in;
		}

		@Override
		protected void onPreExecute() {
			dialog = new ProgressDialog(activity);
			dialog.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
			dialog.setMax(4);
			dialog.setMessage("Uploading routes...");
			dialog.show();
		}

		@Override
		protected void onPostExecute(Void result) {
			dialog.dismiss();
		}

		@Override
		protected Void doInBackground(Void... params) {
			SAXParserFactory spf = SAXParserFactory.newInstance();
			SAXParser sp = null;
			XMLReader xr = null;
			publishProgress();
			try {
				sp = spf.newSAXParser();
			} catch (ParserConfigurationException e) {
				e.printStackTrace();
			} catch (SAXException e) {
				e.printStackTrace();
			}
				publishProgress();
			try {
				xr = sp.getXMLReader();
			} catch (SAXException e) {
				e.printStackTrace();
			}
			publishProgress();
			parseXML parser = new parseXML(100);
			xr.setContentHandler(parser);
			try {
				xr.parse(new InputSource(is));
				route = parser.getXMLrouteList();
			} catch (IOException e) {
				e.printStackTrace();
			} catch (SAXException e) {
				e.printStackTrace();
			} catch(Exception e){
				e.printStackTrace();
			}
			publishProgress();
			return null;
		}

		@Override
		protected void onProgressUpdate(Void... values) {
			dialog.incrementProgressBy(1);
		}
    	
    }
	
	
	//Public relations code
	public void setupPR(){
		addPR("0", " ");
		addPR("1", "Not In Service");
		addPR("2", "To Garage");
		addPR("3", "Training Bus/Not in Service");
		addPR("4", "Road Test/Not in Service");
		addPR("5", "Inbound Only");
		addPR("6", "Outbound Only");
		addPR("7", "Drop Off Only");
		addPR("8", "Bus Full");
		addPR("9", "Please Take Next Bus");
		addPR("10", "Charter");
		addPR("11", "Campus Tour");
		addPR("12", "Event Shuttle");
		addPR("13", "Welcome Aboard");
		addPR("14", "Happy Holidays");
		addPR("15", "Good Morning");
		addPR("16", "Go Ags!");
		addPR("17", "Aggie Pride!");
		addPR("18", "Spare-The-Air/Ride Free");
		addPR("19", "Nowhere In Particular");
		addPR("20", "Employee Shuttle");
		addPR("21", "Special");
		addPR("22", "Unitrans");
		addPR("23", "Tipsy Taxi");
		addPR("24", "Amtrak Shuttle");
		addPR("25", "Uni-Ride");
		addPR("26", "Memorial Union");
		addPR("27", "UC Davis Silo");
		addPR("28", "Summer Service");
		addPR("29", "Finals Service");
		addPR("30", "Break Service");
		addPR("31", "To El Cemonte/Glide");
		addPR("32", "To Russell/Sycamore");
		addPR("33", "To Lake/Arlington");
		addPR("34", "To F St/Covell");
		addPR("35", "To Anderson/Alvaradro");
		addPR("36", "To N. Sycamore Loop");
		addPR("37", "To Cowell/Valdora");
		addPR("38", "To J St/Covell");
		addPR("39", "To Pole Line/Loyola");
		addPR("40", "To Cowell/Valdora via Lillard");
		addPR("41", "Picnic Day");
		addPR("42", "Parking Shuttle");
		addPR("43", "Night Service");
		addPR("44", "Vote Today/ASUCD Elections");
		addPR("99", "Out Of Service");
	}
	private void addPR(String iD, String prMsg){pRCode.add(new prCode(iD,prMsg));}
	
	public void selectPR(String pR){
		prFocus = null;
		for(prCode p : pRCode){
			if(isEqual(p.iD(), pR)){
				prFocus = p;
			}
		}
	}

 
	//UI
	public int getUIFocus(){return UIfocus;}
	public void setUIFocus(int id){UIfocus=id;}
}
