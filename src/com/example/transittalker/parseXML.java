package com.example.transittalker;

import java.util.LinkedList;
import java.util.List;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class parseXML extends DefaultHandler{

	private List<struct> route;
	private List<prCode> code;
	private double minDistance;
	private struct list;
	
	parseXML(double min){
		route = new LinkedList<struct>();
		code = new LinkedList<prCode>();
		minDistance = min;
	}
	
	List<struct> getXMLrouteList(){return route;}
	List<prCode> getXMLprCode(){return code;}

	@Override
	public void startElement(String uri, String localName, String qName,
			Attributes attributes) throws SAXException {
	
		if(localName.equals("route")){				
				list = new struct(minDistance);
				list.setRouteInfo(attributes.getValue("code"), attributes.getValue("name"), attributes.getValue("dest"),"", attributes.getValue("say"));
		}	//pr code , terminal
		else if(localName.equals("stop")){
			list.addStop(Double.parseDouble(attributes.getValue("lat")), Double.parseDouble(attributes.getValue("lon")), attributes.getValue("title"), attributes.getValue("dir"));
		}
		else if(localName.equals("point")){
			list.addTopath(Double.parseDouble(attributes.getValue("lat")), Double.parseDouble(attributes.getValue("lon")));
		}
		else if(localName.equals("prcode")){
			code.add(new prCode(attributes.getValue("code"),attributes.getValue("msg")));
		}
	}

	@Override
	public void endElement(String uri, String localName, String qName)
			throws SAXException {
		if(qName.equals("path")){
			route.add(list);
			list=null;
		}
	}	
}
