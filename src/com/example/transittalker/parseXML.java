package com.example.transittalker;

import java.util.LinkedList;
import java.util.List;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import android.util.Log;

public class parseXML extends DefaultHandler{

	private List<struct> route;
	private double minDistance;
	private struct list;
	
	parseXML(double min){
		route = new LinkedList<struct>();
		minDistance = min;
	}
	
	List<struct> getXMLrouteList(){
		return route;
	}
	
	
	@Override
	public void endDocument() throws SAXException {
		Log.i("XML","End of Document");
	}

	@Override
	public void startDocument() throws SAXException {
		Log.i("XML","Start of Document");
	}

	@Override
	public void startElement(String uri, String localName, String qName,
			Attributes attributes) throws SAXException {
	
		if(localName.equals("route")){				
				//Log.i("XML-ROUTE","route = " + attributes.getValue("name") + " dest=" + attributes.getValue("dest"));
				list = new struct(minDistance);
				list.setRouteInfo(attributes.getValue("code"), attributes.getValue("name"), attributes.getValue("dest"),"", attributes.getValue("say"));
		}	//pr code , terminal
		else if(localName.equals("stop")){
			//Log.i("XML-STOP","stop = " + attributes.getValue("title"));
			list.addStop(Double.parseDouble(attributes.getValue("lat")), Double.parseDouble(attributes.getValue("lon")), attributes.getValue("title"), attributes.getValue("dir"));
		}
		else if(localName.equals("point")){
			//Log.i("XML-POINT","lat = " + attributes.getValue("lat") + " lon = " + attributes.getValue("lon"));
			list.addTopath(Double.parseDouble(attributes.getValue("lat")), Double.parseDouble(attributes.getValue("lon")));
		}
	}

	@Override
	public void endElement(String uri, String localName, String qName)
			throws SAXException {
		if(qName.equals("path")){
			//Log.i("XML-ROUTE_DONE","Route Information End");
			route.add(list);
			list=null;
		}
	}
	
	
}
