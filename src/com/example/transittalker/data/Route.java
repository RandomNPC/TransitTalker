package com.example.transittalker.data;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

import com.example.transittalker.Mainspace;

import android.app.ProgressDialog;
import android.os.AsyncTask;

public class Route implements BusRoute.Listener{

	private Route instance;
	private Listener listen;
	
	private MultiHash<String, BusRoute> routes;
	private MultiHash<String, PRCode> prcodes;
	
	private BusRoute route_ptr;
	private PRCode prcode_ptr;
	
	private List<BusRoute> query_route;
	private List<PRCode> query_prcode;
	private int minDistance;
	
	public Route(Mainspace m, int minDistance){
		listen = m;
		instance = this;
		routes = new MultiHash<String, BusRoute>();
		prcodes = new MultiHash<String, PRCode>();
		query_route = null;
		query_prcode = null;
		route_ptr = null;
		prcode_ptr = null;
		this.minDistance = minDistance;
	}
	
	public void br_busApproaching(BusStop stop) {
		listen.approching_stop(stop);
	}
	
	public interface Listener{
		public void multiple_results(int mode);
		public void single_result();
		public void approching_stop(BusStop stop);
	}
	
	public List<BusRoute> multi_route(){return query_route;}
	public List<PRCode> multi_prcode(){return query_prcode;}
	public BusRoute route(){return route_ptr;}
	public PRCode prcode(){return prcode_ptr;}
	public void set_route(BusRoute r){
		route_ptr = r;
	}
	public void set_pr(PRCode p){
		prcode_ptr = p;
	}
	
	public void route_query(String query){
		List<BusRoute> results = routes.get(query);
		if(results==null){
			route_ptr = null;
			listen.single_result();
			return;
		} 
		
		if(results.size()>0){
			if(results.size()>1){ //multiple routes
				query_route = results;
				listen.multiple_results(0);
			}else{//single route
				route_ptr = results.get(0);
				listen.single_result();
			}
		}
		results = null;
	}
	
	public void pr_query(String query){
		List<PRCode> results = prcodes.get(query);
		
		if(results == null){
			prcode_ptr = null;
			listen.single_result();
			return;
		}
		
		if(results.size()>0){
			if(results.size()>1){ //multiple routes
				query_prcode = results;
				listen.multiple_results(1);
			}else{//single route
				prcode_ptr = results.get(0);
				listen.single_result();
			}
		}
		results = null;

	}
	
	public void init_Data(Mainspace instance,InputStream is){
		new loadData(instance,is).execute();
	}
	
	public class loadData extends AsyncTask<Void,Void,Void>{
    	private ProgressDialog dialog;
    	private Mainspace activity;
    	private InputStream is;
    	
    	public loadData(){}
    	
		public loadData(Mainspace main, InputStream in) {
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
			ParseXMLHandler parser = new ParseXMLHandler(minDistance,instance);
			xr.setContentHandler(parser);
			try {
				xr.parse(new InputSource(is));
				routes = parser.getXMLrouteList();
				prcodes = parser.getXMLprCode();
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

}
