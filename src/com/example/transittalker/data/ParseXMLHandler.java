package com.example.transittalker.data;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class ParseXMLHandler extends DefaultHandler{

	private MultiHash<String, PRCode> code;
	private MultiHash<String, BusRoute> route;
	

	private double minDistance;
	private BusRoute list;
	private Route instance;
	
	ParseXMLHandler(double min,Route context){
		code = new MultiHash<String, PRCode>();
		route = new MultiHash<String, BusRoute>();

		minDistance = min;
		instance = context;
	}
	
	public MultiHash<String, BusRoute> getXMLrouteList(){return route;}
	public MultiHash<String, PRCode> getXMLprCode(){return code;}

	@Override
	public void startElement(String uri, String localName, String qName,
			Attributes attributes) throws SAXException {
	
		if(localName.equals("route")){				
				list = new BusRoute(attributes.getValue("code"), attributes.getValue("name"), attributes.getValue("dest"),attributes.getValue("say"),minDistance,instance);
		}	//pr code , terminal
		else if(localName.equals("stop")){
			list.br_addBusStop(Double.parseDouble(attributes.getValue("lat")), Double.parseDouble(attributes.getValue("lon")), attributes.getValue("title"), attributes.getValue("dir"));
		}
		else if(localName.equals("point")){
			list.br_addtoPath(Double.parseDouble(attributes.getValue("lat")), Double.parseDouble(attributes.getValue("lon")));
		}
		else if(localName.equals("prcode")){
			code.add(attributes.getValue("code"),new PRCode(attributes.getValue("code"),attributes.getValue("msg")));
		}
	}

	@Override
	public void endElement(String uri, String localName, String qName)
			throws SAXException {
		if(qName.equals("path")){
			route.add(list.br_rc(),list);
			list=null;
		}
	}	
}
