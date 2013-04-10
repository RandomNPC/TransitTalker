package com.example.transittalker;

import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

import android.app.ProgressDialog;
import android.os.AsyncTask;


public class TransitMain{

	private struct routeFocus;
	private prCode prFocus;
	private List<struct> route;
	private List<prCode> pRCode;
	private boolean setCode;
	private boolean apeshit;
	private int UIfocus;
	private boolean PRStart;
	private List<struct> select;
	private int multiple;
	
	public TransitMain(double min){
		routeFocus = null;
		prFocus = null;
		route = new LinkedList<struct>();
		pRCode = new LinkedList<prCode>();
		setCode = true;
		apeshit = false;
		UIfocus = 0;
		PRStart = true;
		select = new LinkedList<struct>();
		multiple = 0;
	}
	
	//universal function
	private boolean isEqual(String marco, String polo){
		if(marco.length() > 0 && polo.length() > 0 && marco.length() < 4 && polo.length()<4){
			return marco.contains(polo);
		}
		else return false;
		}
	
	//booleans for keypad
	public void setPRStart(boolean val) {PRStart=val;}
	public void setApeshit(boolean val){apeshit=val;}
	public void setCode(boolean val){setCode=val;}
	public void setMulti(int val){multiple = val;}
	boolean isSetCode(){return setCode;}
	boolean isApeshit(){return apeshit;}
	boolean PRStart(){return PRStart;}
	int multiDest(){return multiple;}
	
	//select route
	public void selectRoute(String raw){
		List<struct> list = new LinkedList<struct>();
		for(struct l: route){ 
			if(isEqual(raw.toLowerCase(Locale.getDefault()),l.routeName().toLowerCase(Locale.getDefault())) || isEqual(raw.toLowerCase(Locale.getDefault()), l.routeCode().toLowerCase(Locale.getDefault()))){
				list.add(l);
			}
		}
		if(list.size()>0)select = list;
		else select = null;
		list = null;
	}
	
	public void setFocus(struct l){
		routeFocus = l;
	}

	public void removeUnusedFocus(int keep){
		for(int k = 0; k<select.size(); k++){
			if(k!=keep)select.remove(k);
		}
	}
	
	//return selections
	public prCode prFocus(){return prFocus;}
	public struct routeFocus(){return routeFocus;}
	public List<struct> selectFocus(){return select;}
	
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
			dialog.setMessage("Uploading information from XML...");
			dialog.show();
		}
		
		@Override
		protected void onPostExecute(Void result) {dialog.dismiss();}
	 
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
				pRCode = parser.getXMLprCode();
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
		protected void onProgressUpdate(Void... values) {dialog.incrementProgressBy(1);}
    }
	
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
