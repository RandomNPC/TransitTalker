package com.example.talktomebus;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;

public class Main extends Activity implements OnClickListener, OnLongClickListener{

	LocationListener listener;
	LocationManager manager;
	TextToSpeech tts;
	String destinationCode="";
	List<LL> route = new ArrayList<LL>();
	boolean setCode = true;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        //Settings
		setRequestedOrientation(8);
		getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
		AudioManager aM = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
		aM.setStreamVolume(AudioManager.STREAM_MUSIC, aM.getStreamMaxVolume(AudioManager.STREAM_MUSIC), 0);

		Button keySet = (Button) findViewById(R.id.buttonSet);
		keySet.setOnClickListener(this);
		
		setupRoutes(route);
		
		manager = (LocationManager) this.getSystemService(Context.LOCATION_SERVICE);
		listener = new LocationListener() {
			
			public void onStatusChanged(String arg0, int arg1, Bundle arg2) {}
			public void onProviderEnabled(String arg0) {}
			public void onProviderDisabled(String arg0) {}
			public void onLocationChanged(Location currentLocation) {
				
				TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);
				
				//Not used at this time
				//TextView textTOP = (TextView) findViewById(R.id.displayTOP);
				
				sayStop(selectRoute(destinationCode, route),
						route, 
						currentLocation.getLatitude(),
						currentLocation.getLongitude(),
						100,
						currentLocation.getBearing(),
						textBOT);
			}
		};

    }

	public void setupRoutes(List<LL> route){
		addRoute("10","A","A DOWNTOWN/5TH STREET/ALHAMBRA",route);
		addRoute("11","A-LTD","A-LTD DOWNTOWN/5TH STREET/CANTRILL",route);
		addRoute("20","B","B SYCAMORE/DRAKE",route);
		addRoute("30","C","C SYCAMORE/WAKE FOREST",route);
		addRoute("40","D","D LAKE BLVD./ARLINGTON",route);
		addRoute("50","E","E DOWNTOWN/F ST./J ST.",route);
		addRoute("60","F","F OAK AVE/E. ALVARADO/CATALINA",route);
		addRoute("70","G","G ANDERSON/ALVERADO/N. SYCAMORE",route);
		addRoute("100", "J", "J ANDERSON/ALVERADO/N. SYCAMORE", route);
		addRoute("110","K","K LAKE BLVD./ARTHUR ST.",route);
		addRoute("120","L","L E. 8TH ST./POLE LINE/MOORE/LOYOLA",route);
		addRoute("130","M","M B ST./COWELL/DREW",route);
		addRoute("150", "O", "O SHOPPERS SHUTTLE", route);// DOWNTOWN/TARGET/WEST VILLAGE
		addRoute("160","P","P DAVIS PERIMETER COUNTER CLOCKWISE",route);
		addRoute("170","Q","Q DAVIS PERIMETER CLOCKWISE",route);
		addRoute("190","S","S HOLMES/HARPER JR. HIGH",route);
		addRoute("200","T","T DAVIS HIGH SCHOOL/MOORE BLVD/ALHAMBRA",route);
		addRoute("220","V","V WEST VILLAGE",route);
		addRoute("230", "W", "W COWELL/LILLARD/DRUMMOND", route);
		addRoute("101","J-EXP","J-EXP TO N.SYCAMORE VIA 113",route);
		addRoute("020","W-EXP","W-EXP TO COWELL & VALDORA",route);
	}
	private void addRoute(String rC, String routeName, String hS, List<LL> route) {
		LL list = new LL();
		list.setRouteInfo(rC, routeName, hS);
		populateRoute(list, routeName); // temporary
		route.add(list);
		list = null;
	}
	private void populateRoute(LL route,String routeName) {

		if (routeName == "A") {
			route.addStop(38.5393299, -121.75368, "Silo Terminal & North Boarding Area", "WB");
			route.addStop(38.53919, -121.7483699, "Hutchison Dr & Art Building", "EB");
			route.addStop(38.54003, -121.74605, "Hutchison Dr & A St", "EB");
			route.addStop(38.54266, -121.7439099, "2nd St & B St", "EB");
			route.addStop(38.54314, -121.7411799, "2nd St & E St", "EB");
			route.addStop(38.5439899, -121.73802, "H St & Amtrak Station", "NB");
			route.addStop(38.5456399, -121.7345, "3rd St & K St", "EB");
			route.addStop(38.5515299, -121.72136, "5th St & Cantrill", "WB");
			route.addStop(38.54784, -121.73412, "L St & 4th St", "NB");
			route.addStop(38.54874, -121.72565, "5th St & Pole Line Rd", "EB");
			route.addStop(38.5517799, -121.71904, "5th St & Cantrill ", "EB");
			route.addStop(38.5526799, -121.71538, "5th St & Pena Dr", "EB");
			route.addStop(38.55342, -121.71244, "5th St & Spafford St", "EB");
			route.addStop(38.55466, -121.7090799, "5th St & Arroyo Ave", "EB");
			route.addStop(38.55781, -121.7043, "Alhambra Dr & 5th St", "EB");
			route.addStop(38.55786, -121.69946, "Alhambra Dr & Arroyo Ave", "EB");
			route.addStop(38.5585499, -121.69697, "Alhambra Dr & Mace Blvd", "EB");
			route.addStop(38.5577499, -121.6942999, "Mace Blvd & 2nd St", "SB");
			route.addStop(38.55077, -121.6934799, "Chiles Rd & Mace Blvd", "EB");
			route.addStop(38.5508799, -121.69103, "El Cemonte Ave & Glide Dr", "SB");
			route.addStop(38.5508799, -121.69103, "El Cemonte Ave & Glide Dr", "SB");
			route.addStop(38.5489599, -121.69009, "Cowell Blvd & El Cemonte Ave", "WB");
			route.addStop(38.5488399, -121.6925799, "Cowell Blvd & Mace Blvd", "WB");
			route.addStop(38.54928, -121.69425, "Mace Blvd & Cowell Blvd", "NB");
			route.addStop(38.55625, -121.69395, "Mace Blvd & 2nd St", "NB");
			route.addStop(38.5587299, -121.69722, "Alhambra Dr & Mace Blvd", "WB");
			route.addStop(38.5580799, -121.7012599, "Alhambra Dr & Caceres Ct", "WB");
			route.addStop(38.55739, -121.7052499, "5th St & Alhambra Dr", "SB");
			route.addStop(38.55483, -121.7093199, "5th St & Pelz Bike Path Tunnel", "WB");
			route.addStop(38.5534899, -121.7129099, "5th St & San Sebastian St", "WB");
			route.addStop(38.5526299, -121.7165099, "5th St & San Rafael St", "WB");
			route.addStop(38.5515299, -121.72136, "5th St & Cantrill", "WB");
			route.addStop(38.5490399, -121.7255299, "5th St & Pole Line Rd", "WB");
			route.addStop(38.5488299, -121.7277699, "5th St & Pole Line Rd", "WB");
			route.addStop(38.5488999, -121.7308, "5th St & Davis PW Corp Yard", "WB");
			route.addStop(38.54774, -121.73434, "L St & 425", "SB");
			route.addStop(38.5457499, -121.7350899, "3rd St & K St", "WB");
			route.addStop(38.5439399, -121.73824, "H St Alley & 2nd St", "SB");
			route.addStop(38.5433299, -121.74093, "2nd St & E St", "WB");
			route.addStop(38.5419099, -121.7430899, "C St & 1st St", "SB");
			route.addStop(38.5404899, -121.7460099, "A St & Hutchison", "SB");
			route.addStop(38.5391799, -121.74999, "Hutchison & Shields Library", "WB");
			route.addStop(38.5393299, -121.75368, "Silo Terminal & North Boarding Area", "WB");
		} else if (routeName == "A-LTD") {
		} else if (routeName == "B") {
			route.addStop(38.5436099, -121.74972, "Memorial Union & Howard Way (NB)", "NB");
			route.addStop(38.5475099, -121.76167, "Sycamore Ln & University Mall", "NB");
			route.addStop(38.55096, -121.7644, "Sycamore Ln & 8th St", "NB");
			route.addStop(38.55348, -121.76489, "Sycamore Ln & Cornell Dr", "NB");
			route.addStop(38.5549099, -121.76484, "Sycamore Ln & Bucknell Dr", "NB");
			route.addStop(38.5564799, -121.76481, "Sycamore Ln & Villanova Dr", "NB");
			route.addStop(38.5582399, -121.76472, "Sycamore Ln & Radcliffe Dr", "NB");
			route.addStop(38.5592999, -121.76048, "Radcliffe Dr & Apple Ln", "NB");
			route.addStop(38.5600899, -121.76124, "Drake Dr & Drake Dr  Apts", "WB");
			route.addStop(38.5597799, -121.7639899, "Sycamore Ln & Drake Dr", "SB");
			route.addStop(38.55849, -121.7648199, "Sycamore Ln & Notre Dame Dr", "SB");
			route.addStop(38.5558399, -121.76501, "Sycamore Ln & Villanova Dr", "SB");
			route.addStop(38.55294, -121.7650999, "Sycamore Ln & Cornell Dr", "SB");
			route.addStop(38.5506099, -121.7642199, "Sycamore & 8th", "SB");
			route.addStop(38.5473799, -121.76198, "Sycamore Ln & Wake Forest Dr", "SB");
			route.addStop(38.5437499, -121.74982, "Memorial Union Terminal Arrival & Howard Way", "NB");
		} else if (routeName == "C") {
			route.addStop(38.5391399, -121.75309, "Hutchison & California", "WB");
			route.addStop(38.54402, -121.7598299, "La Rue Rd & Orchard", "NB");
			route.addStop(38.5469099, -121.75857, "Anderson Rd & Russell Blvd", "NB");
			route.addStop(38.5505799, -121.76471, "8th St & Sycamore Ln", "WB");
			route.addStop(38.5486899, -121.76658, "Wake Forest Dr & 1440", "EB");
			route.addStop(38.54793, -121.7639399, "Wake Forest Dr & Oxford Cir", "EB");
			route.addStop(38.5473799, -121.76198, "Sycamore Ln & Wake Forest Dr", "SB");
			route.addStop(38.54251, -121.7608899, "La Rue Rd & Orchard", "SB");
			route.addStop(38.53903, -121.75577, "Hutchison Dr & Bioletti Way", "EB");
			route.addStop(38.5393499, -121.75308, "Silo Terminal & Center Island", "EB");
		} else if (routeName == "D") {
			route.addStop(38.5391399, -121.75309, "Hutchison & California", "WB");
			route.addStop(38.5388399, -121.7622799, "Hutchison Dr & Ext Center", "WB");
			route.addStop(38.5371399, -121.76506, "Hutchison Dr & Health Sci Dr", "WB");
			route.addStop(38.54655, -121.77102, "Russell Blvd & Arthur St", "WB");
			route.addStop(38.5467999, -121.78585, "Russell Blvd & Arlington Farms", "WB");
			route.addStop(38.54895, -121.78849, "Lake Blvd & Portage Bay", "NB");
			route.addStop(38.5504399, -121.7873, "Lake Blvd & Salem Ave", "NB");
			route.addStop(38.5528099, -121.7873499, "Lake Blvd & 1050", "NB");
			route.addStop(38.5549699, -121.78691, "Arlington Blvd & Lake Blvd", "SB");
			route.addStop(38.55371, -121.7848399, "Arlington Blvd & Cabot St", "SB");
			route.addStop(38.5534699, -121.7813699, "Arlington Blvd & Shasta Dr", "SB");
			route.addStop(38.55028, -121.7792699, "Arlington Blvd & Westernesse Rd", "SB");
			route.addStop(38.54877, -121.7788, "Arlington Blvd & Bucklebury Rd", "SB");
			route.addStop(38.5373699, -121.76423, "Hutchison Dr & Health Sci Drive", "EB");
			route.addStop(38.53903, -121.7557699, "Hutchison Dr & Bioletti Way", "EB");
			route.addStop(38.5391399, -121.75309, "Hutchison & California", "WB");
			route.addStop(38.5440199, -121.75983, "La Rue Rd & Orchard", "NB");
			route.addStop(38.5464899, -121.7635, "Russell Blvd & Sycamore Ln", "WB");
			route.addStop(38.5462399, -121.762, "Russell Blvd & Sycamore Ln", "EB");
			route.addStop(38.54251, -121.7608899, "La Rue Rd & Orchard", "SB");
		} else if (routeName == "E") {
			route.addStop(38.5437599, -121.74963, "Memorial Union & Howard Way (NB)", "NB");
			route.addStop(38.5450499, -121.7451299, "B St & 4th St ", "SB");
			route.addStop(38.5441299, -121.74322, "3rd St & C St", "EB");
			route.addStop(38.5445099, -121.74114, "3rd St & E St", "EB");
			route.addStop(38.5462999, -121.7406799, "F St & 4th St ", "NB");
			route.addStop(38.5475799, -121.7410499, "F St & 5th Street ", "NB");
			route.addStop(38.5516099, -121.74199, "F St & 8th St", "NB");
			route.addStop(38.5552599, -121.7426, "F St & 12th St", "NB");
			route.addStop(38.5571899, -121.7433, "F St & 14th St", "NB");
			route.addStop(38.5602299, -121.74466, "F St & Covell Blvd", "NB");
			route.addStop(38.5591699, -121.73908, "J St & Menlo Dr", "SB");
			route.addStop(38.55698, -121.7407699, "J St & Drexel Dr", "SB");
			route.addStop(38.55437, -121.73991, "J St & Alice St", "SB");
			route.addStop(38.5520399, -121.73881, "J St & 8th St", "SB");
			route.addStop(38.5515899, -121.74127, "8th St & G St", "WB");
			route.addStop(38.55092, -121.7421499, "F St & 8th St ", "SB");
			route.addStop(38.5456899, -121.7406999, "F St & 4th St ", "SB");
			route.addStop(38.5445499, -121.74169, "3rd St & E St", "WB");
			route.addStop(38.5442099, -121.74391, "3rd St & C St", "WB");
			route.addStop(38.5452799, -121.7449299, "B St & 4th St", "NB");
			route.addStop(38.5437499, -121.74982, "Memorial Union Terminal Arrival & Howard Way", "NB");
		} else if (routeName == "F") {
			route.addStop(38.5436299, -121.74958, "Memorial Union & Howard Way (NB)", "NB");
			route.addStop(38.54664, -121.7526499, "Oak Ave & Russell Blvd", "NB");
			route.addStop(38.55103, -121.75261, "Oak Ave & 8th St", "NB");
			route.addStop(38.55334, -121.75257, "Oak Ave & Antioch Dr", "NB");
			route.addStop(38.5559499, -121.75252, "14th St & Oak St", "WB");
			route.addStop(38.5564099, -121.7565599, "Villanova Dr & Reed Dr", "WB");
			route.addStop(38.5565699, -121.75842, "Anderson Rd & Villanova Dr", "NB");
			route.addStop(38.5594499, -121.7584, "Anderson Rd & Hanover Dr", "NB");
			route.addStop(38.5619699, -121.75699, "Alvarado Ave & Anderson", "EB");
			route.addStop(38.5616, -121.75289, "Alvarado Ave & Del Rey Ct", "EB");
			route.addStop(38.5621499, -121.75029, "Catalina Dr & Alvarado Ave", "NB");
			route.addStop(38.5647099, -121.7527299, "Catalina Dr & Cabrillo Ave", "NB");
			route.addStop(38.56694, -121.75413, "Catalina Dr & Grande Ave", "NB");
			route.addStop(38.5681999, -121.75712, "Catalina Dr & Corona Dr", "WB");
			route.addStop(38.56681, -121.7585399, "Anderson Rd & Valencia Ave", "SB");
			route.addStop(38.5625999, -121.75856, "Anderson Rd & Alvarado Ave", "SB");
			route.addStop(38.55906, -121.7579199, "Hanover Dr & Anderson Rd", "EB");
			route.addStop(38.5595499, -121.75617, "Hanover Dr & Scripps", "NB");
			route.addStop(38.5576999, -121.7523499, "Oak Ave & Scripps ", "SB");
			route.addStop(38.5555599, -121.75242, "Oak Ave & 14th St", "SB");
			route.addStop(38.55272, -121.7527799, "Oak Ave & Antioch Dr", "SB");
			route.addStop(38.5504399, -121.75285, "Oak Ave & 8th St", "SB");
			route.addStop(38.5464899, -121.7529099, "Oak Ave & Russell Blvd", "SB");
			route.addStop(38.5437499, -121.74982, "Memorial Union Terminal Arrival & Howard Way", "NB");
		} else if (routeName == "G") {
			route.addStop(38.5437499, -121.74975, "Memorial Union & Howard Way (NB)", "NB");
			route.addStop(38.5469099, -121.75857, "Anderson Rd & Russell Blvd", "NB");
			route.addStop(38.5526699, -121.7585, "Anderson Rd & Amherst Dr", "NB");
			route.addStop(38.55657, -121.7584199, "Anderson Rd & Villanova Dr", "NB");
			route.addStop(38.5594499, -121.7584, "Anderson Rd & Hanover Dr", "NB");
			route.addStop(38.5622099, -121.7593699, "Alvarado Ave & Anderson", "WB");
			route.addStop(38.5620999, -121.76325, "Alvarado Ave & Sycamore", "WB");
			route.addStop(38.5631399, -121.76542, "Sycamore Ln & Pepperwood Apts", "NB");
			route.addStop(38.56445, -121.7656099, "Sycamore Ln & Antelope", "NB");
			route.addStop(38.56631, -121.76556, "Sycamore Ln & Chaparral Apts", "NB");
			route.addStop(38.5682499, -121.76699, "North Sycamore Loop & ", "NB");
			route.addStop(38.5660299, -121.76584, "Sycamore Ln & Chaparral Apts", "SB");
			route.addStop(38.5643599, -121.7658499, "Sycamore Ln & Antelope", "SB");
			route.addStop(38.56253, -121.76504, "Sycamore Ln & Alvarado", "SB");
			route.addStop(38.5619399, -121.76301, "Alvarado Ave & Sycamore", "EB");
			route.addStop(38.5619999, -121.75955, "Alvarado Ave & Anderson", "EB");
			route.addStop(38.5585599, -121.75871, "Anderson Rd & Hanover Dr", "SB");
			route.addStop(38.55592, -121.7587399, "Anderson Rd & Villanova Dr", "SB");
			route.addStop(38.55229, -121.7588099, "Anderson Rd & Amherst Dr", "SB");
			route.addStop(38.5472999, -121.75887, "Anderson Rd & Russell Blvd", "SB");
			route.addStop(38.5437499, -121.74982, "Memorial Union Terminal Arrival & Howard Way", "NB");
		} else if (routeName == "J") {
			route.addStop(38.5391399, -121.75309, "Hutchison & California", "WB");
			route.addStop(38.54402, -121.7598299, "La Rue Rd & Orchard", "NB");
			route.addStop(38.5469099, -121.75857, "Anderson Rd & Russell Blvd", "NB");
			route.addStop(38.55267, -121.7584999, "Anderson Rd & Amherst Dr", "NB");
			route.addStop(38.55657, -121.7584199, "Anderson Rd & Villanova Dr", "NB");
			route.addStop(38.5594499, -121.7584, "Anderson Rd & Hanover Dr", "NB");
			route.addStop(38.5622099, -121.7593699, "Alvarado Ave & Anderson", "WB");
			route.addStop(38.5620999, -121.76325, "Alvarado Ave & Sycamore", "WB");
			route.addStop(38.5631399, -121.76542, "Sycamore Ln & Pepperwood Apts", "NB");
			route.addStop(38.56445, -121.7656099, "Sycamore Ln & Antelope", "NB");
			route.addStop(38.56631, -121.76556, "Sycamore Ln & Chaparral Apts", "NB");
			route.addStop(38.5682499, -121.76699, "North Sycamore Loop & ", "NB");
			route.addStop(38.56603, -121.7658399, "Sycamore Ln & Chaparral Apts", "SB");
			route.addStop(38.5643599, -121.7658499, "Sycamore Ln & Antelope", "SB");
			route.addStop(38.56253, -121.76504, "Sycamore Ln & Alvarado", "SB");
			route.addStop(38.5619399, -121.76301, "Alvarado Ave & Sycamore", "EB");
			route.addStop(38.5619999, -121.75955, "Alvarado Ave & Anderson", "EB");
			route.addStop(38.5585599, -121.75871, "Anderson Rd & Hanover Dr", "SB");
			route.addStop(38.55592, -121.7587399, "Anderson Rd & Villanova Dr", "SB");
			route.addStop(38.55229, -121.7588099, "Anderson Rd & Amherst Dr", "SB");
			route.addStop(38.5472999, -121.75887, "Anderson Rd & Russell Blvd", "SB");
			route.addStop(38.5425099, -121.7608899, "La Rue Rd & Orchard", "SB");
			route.addStop(38.53903, -121.7557699, "Hutchison Dr & Bioletti Way", "EB");
			route.addStop(38.5391399, -121.75309, "Hutchison & California", "WB");
		} else if (routeName == "K") {
			route.addStop(38.5436399, -121.7501, "Memorial Union & Howard Way (SB)", "SB");
			route.addStop(38.5464899, -121.7635, "Russell Blvd & Sycamore Ln", "WB");
			route.addStop(38.5465499, -121.7710199, "Russell Blvd & Arthur St", "WB");
			route.addStop(38.5467999, -121.78585, "Russell Blvd & Arlington Farms", "WB");
			route.addStop(38.54895, -121.78849, "Lake Blvd & Portage Bay", "NB");
			route.addStop(38.5504399, -121.7873, "Lake Blvd & Salem Ave", "NB");
			route.addStop(38.5528099, -121.7873499, "Lake Blvd & 1050", "NB");
			route.addStop(38.5549699, -121.78691, "Arlington Blvd & Lake Blvd", "SB");
			route.addStop(38.55371, -121.7848399, "Arlington Blvd & Cabot St", "SB");
			route.addStop(38.5534699, -121.7813699, "Arlington Blvd & Shasta Dr", "SB");
			route.addStop(38.55332, -121.7789499, "Humboldt Ave & Arlington Blvd", "EB");
			route.addStop(38.55276, -121.7760099, "Humboldt Ave & Imperial ", "EB");
			route.addStop(38.55281, -121.7711099, "Humboldt Ave & Arthur St", "EB");
			route.addStop(38.5516099, -121.77051, "Arthur St & North Adams St", "SB");
			route.addStop(38.54802, -121.7706799, "Arthur St & Alameda Ave", "SB");
			route.addStop(38.5462399, -121.762, "Russell Blvd & Sycamore Ln", "EB");
			route.addStop(38.5437499, -121.74982, "Memorial Union Terminal Arrival & Howard Way", "NB");
			route.addStop(38.55028, -121.7792699, "Arlington Blvd & Westernesse Rd", "SB");
			route.addStop(38.54877, -121.7788, "Arlington Blvd & Bucklebury Rd", "SB");
			route.addStop(38.5497099, -121.76906, "Adams St & 720 Adams St", "NB");
			route.addStop(38.5514199, -121.77013, "North Adams & Arthur", "WB");
		} else if (routeName == "L") {
			route.addStop(38.5393299, -121.75368, "Silo Terminal & North Boarding Area", "WB");
			route.addStop(38.53919, -121.74837, "Hutchison Dr & Art Building", "EB");
			route.addStop(38.5400299, -121.7460499, "Hutchison Dr & A St", "EB");
			route.addStop(38.54528, -121.74493, "B St & 4th St", "NB");
			route.addStop(38.5469999, -121.74544, "B St & 5th St", "NB");
			route.addStop(38.54965, -121.74606, "B St & 7th St", "NB");
			route.addStop(38.5509299, -121.74401, "8th St & D St", "EB");
			route.addStop(38.55142, -121.7412699, "8th St & G St", "EB");
			route.addStop(38.5516999, -121.73892, "8th St & J St", "EB");
			route.addStop(38.55278, -121.7343599, "8th St & L St", "EB");
			route.addStop(38.55329, -121.7303399, "8th St & Chestnut Ln", "EB");
			route.addStop(38.55396, -121.72726, "Pole Line Rd & 8th St", "NB");
			route.addStop(38.55616, -121.72732, "Pole Line Rd & Loyola Dr", "NB");
			route.addStop(38.5614499, -121.73099, "Pole Line Rd & Claremont Dr", "NB");
			route.addStop(38.56436, -121.73086, "Pole Line Rd & Picasso Ave", "NB");
			route.addStop(38.5666099, -121.73075, "Pole Line & Donner", "NB");
			route.addStop(38.5702599, -121.72919, "Moore Blvd & Pole Line Rd", "EB");
			route.addStop(38.5686, -121.72665, "Moore Blvd & Rockwell", "EB");
			route.addStop(38.56502, -121.7234599, "Moore Blvd & Raphael", "EB");
			route.addStop(38.56442, -121.7191699, "Moore Blvd & Wright Blvd", "EB");
			route.addStop(38.5626699, -121.7146, "Monarch Ln & Campbell", "SB");
			route.addStop(38.56198, -121.7171999, "Temple Dr & Balsam Pl", "WB");
			route.addStop(38.55824, -121.71741, "Tulip Ln & Cascade Pl", "SB");
			route.addStop(38.5579, -121.7203099, "Loyola Dr & Regis Dr", "WB");
			route.addStop(38.5577699, -121.723, "Loyola Dr & Nutmeg Ln", "WB");
			route.addStop(38.5575999, -121.72734, "Loyola Dr & Whittier Dr", "WB");
			route.addStop(38.5551899, -121.7274799, "Pole Line & Wahl Way", "SB");
			route.addStop(38.5534299, -121.72763, "East 8th Street & Pole Line Road", "WB");
			route.addStop(38.5535099, -121.7313099, "8th St & Chestnut Ln", "WB");
			route.addStop(38.5526699, -121.73544, "8th St & L St", "WB");
			route.addStop(38.5519199, -121.739, "8th St & J St", "WB");
			route.addStop(38.55159, -121.7412699, "8th St & G St", "WB");
			route.addStop(38.5510099, -121.74472, "8th St & D St", "WB");
			route.addStop(38.5489299, -121.74617, "B St & 7th St", "SB");
			route.addStop(38.54505, -121.74513, "B St & 4th St ", "SB");
			route.addStop(38.54049, -121.74601, "A St & Hutchison", "SB");
			route.addStop(38.5391799, -121.74999, "Hutchison & Shields Library", "WB");
			route.addStop(38.5391399, -121.75309, "Hutchison & California", "WB");
		} else if (routeName == "M") {
			route.addStop(38.5434399, -121.75006, "Memorial Union & Howard Way (SB)", "SB");
			route.addStop(38.5450499, -121.7451299, "B St & 4th St ", "SB");
			route.addStop(38.5415199, -121.74254, "1st St & C St", "EB");
			route.addStop(38.54064, -121.73854, "Richards Blvd & Olive Dr", "SB");
			route.addStop(38.5398399, -121.73081, "Cowell Blvd & Research Park S Dr", "EB");
			route.addStop(38.54019, -121.72697, "Drew Ave & Cowell Blvd", "NB");
			route.addStop(38.5436, -121.72735, "Drew & Research Park Drive", "NB");
			route.addStop(38.5432399, -121.72253, "Cowell Blvd & Halsey Cir", "WB");
			route.addStop(38.5401199, -121.72509, "Cowell Blvd & Valdora St", "WB");
			route.addStop(38.5400399, -121.7275399, "Cowell Blvd & Drew Ave", "WB");
			route.addStop(38.5401199, -121.7302099, "Cowell Blvd & Research Park S Dr", "WB");
			route.addStop(38.5407999, -121.7383199, "Richards Blvd & Olive Dr", "NB");
			route.addStop(38.5418199, -121.74205, "1st St & D St", "WB");
			route.addStop(38.54528, -121.74493, "B St & 4th St", "NB");
			route.addStop(38.5463799, -121.7468699, "Russell Blvd & A St", "WB");
			route.addStop(38.5437499, -121.74982, "Memorial Union Terminal Arrival & Howard Way", "NB");
		} else if (routeName == "O") {
			route.addStop(38.5393299, -121.75368, "Silo Terminal & North Boarding Area", "WB");
			route.addStop(38.53919, -121.74837, "Hutchison Dr & Art Building", "EB");
			route.addStop(38.54003, -121.7460499, "Hutchison Dr & A St", "EB");
			route.addStop(38.54266, -121.7439099, "2nd St & B St", "EB");
			route.addStop(38.54314, -121.7411799, "2nd St & E St", "EB");
			route.addStop(38.5439899, -121.73802, "H St & Amtrak Station", "NB");
			route.addStop(38.54564, -121.7344999, "3rd St & K St", "EB");
			route.addStop(38.5478399, -121.7341199, "L St & 4th St", "NB");
			route.addStop(38.54856, -121.72763, "5th St & Pole Line Rd", "EB");
			route.addStop(38.54874, -121.72565, "5th St & Pole Line Rd", "EB");
			route.addStop(38.5517799, -121.71904, "5th St & Cantrill ", "EB");
			route.addStop(38.5526799, -121.71538, "5th St & Pena Dr", "EB");
			route.addStop(38.55342, -121.71244, "5th St & Spafford St", "EB");
			route.addStop(38.55466, -121.7090799, "5th St & Arroyo Ave", "EB");
			route.addStop(38.55781, -121.7043, "Alhambra Dr & 5th St", "EB");
			route.addStop(38.55786, -121.69946, "Alhambra Dr & Arroyo Ave", "EB");
			route.addStop(38.5585499, -121.69697, "Alhambra Dr & Mace Blvd", "EB");
			route.addStop(38.5577499, -121.6942999, "Mace Blvd & 2nd St", "SB");
			route.addStop(38.5537199, -121.69776, "2nd St. & Target Drive", "WB");
			route.addStop(38.5502299, -121.7157, "Pena  & 2nd St.", "NB");
			route.addStop(38.5526299, -121.7165099, "5th St & San Rafael St", "WB");
			route.addStop(38.5515299, -121.72136, "5th St & Cantrill", "WB");
			route.addStop(38.5490399, -121.7255299, "5th St & Pole Line Rd", "WB");
			route.addStop(38.5488299, -121.7277699, "5th St & Pole Line Rd", "WB");
			route.addStop(38.5488999, -121.7308, "5th St & Davis PW Corp Yard", "WB");
			route.addStop(38.54774, -121.73434, "L St & 425", "SB");
			route.addStop(38.5457499, -121.7350899, "3rd St & K St", "WB");
			route.addStop(38.5445499, -121.74169, "3rd St & E St", "WB");
			route.addStop(38.5442099, -121.74391, "3rd St & C St", "WB");
			route.addStop(38.5452799, -121.7449299, "B St & 4th St", "NB");
			route.addStop(38.5463799, -121.74687, "Russell Blvd & A St", "WB");
			route.addStop(38.5469099, -121.75857, "Anderson Rd & Russell Blvd", "NB");
			route.addStop(38.55061, -121.76422, "Sycamore & 8th", "SB");
			route.addStop(38.5473799, -121.76198, "Sycamore Ln & Wake Forest Dr", "SB");
			route.addStop(38.5464899, -121.7635, "Russell Blvd & Sycamore Ln", "WB");
			route.addStop(38.5389999, -121.77134, "Hutchison & Sage", "NB");
			route.addStop(38.54136, -121.77133, "West Village Sq & Town Square", "NB");
			route.addStop(38.5408199, -121.77171, "West Village Sq & Community College", "SB");
			route.addStop(38.5387999, -121.7717699, "Hutchison & Sage", "SB");
			route.addStop(38.53737, -121.7642299, "Hutchison Dr & Health Sci Drive", "EB");
			route.addStop(38.5370399, -121.7610699, "La Rue Rd & Hutchison", "SB");
			route.addStop(38.53422, -121.7592999, "La Rue Rd & Garrod Dr", "EB");
			route.addStop(38.53584, -121.7588, "Dairy Road & Tercero", "NB");
			route.addStop(38.53903, -121.75577, "Hutchison Dr & Bioletti Way", "EB");
			route.addStop(38.5393299, -121.75368, "Silo Terminal & North Boarding Area", "WB");
		} else if (routeName == "P") {
			route.addStop(38.5439299, -121.74983, "Memorial Union & Howard Way (NB)", "NB");
			route.addStop(38.54689, -121.7429799, "5th St & D St", "EB");
			route.addStop(38.5473999, -121.73961, "5th St & G St", "EB");
			route.addStop(38.5485599, -121.72763, "5th St & Pole Line Rd", "EB");
			route.addStop(38.5425899, -121.7251899, "Pole Line Rd & Cowell Blvd", "SB");
			route.addStop(38.54116, -121.7221899, "Lillard Dr & Cowell Blvd", "EB");
			route.addStop(38.5416599, -121.71735, "Lillard Dr & Evans Ct", "EB");
			route.addStop(38.5473499, -121.71263, "Cowell Blvd & Drummond Ave", "EB");
			route.addStop(38.5474, -121.70609, "Cowell Blvd & Ohlone St", "EB");
			route.addStop(38.54807, -121.7027299, "Cowell Blvd & La Vida", "EB");
			route.addStop(38.54776, -121.69978, "Cowell Blvd & Ensenada Dr", "EB");
			route.addStop(38.54792, -121.6967199, "Cowell Blvd & Sunrise Ct", "EB");
			route.addStop(38.5492799, -121.69425, "Mace Blvd & Cowell Blvd", "NB");
			route.addStop(38.55625, -121.69395, "Mace Blvd & 2nd St", "NB");
			route.addStop(38.5635199, -121.71829, "Covell Blvd & Wright Blvd", "WB");
			route.addStop(38.5626499, -121.73024, "Covell Blvd & Pole Line Rd", "WB");
			route.addStop(38.5607399, -121.7380799, "Covell Blvd & J St", "WB");
			route.addStop(38.5601099, -121.74496, "F St & Covell Blvd", "SB");
			route.addStop(38.55694, -121.7438099, "14th St & F St", "WB");
			route.addStop(38.5560899, -121.74815, "14th St & B St", "WB");
			route.addStop(38.5559599, -121.75058, "14th St & Davis HS", "WB");
			route.addStop(38.5559499, -121.75252, "14th St & Oak St", "WB");
			route.addStop(38.5564099, -121.7565599, "Villanova Dr & Reed Dr", "WB");
			route.addStop(38.55657, -121.7584199, "Anderson Rd & Villanova Dr", "NB");
			route.addStop(38.5594499, -121.7584, "Anderson Rd & Hanover Dr", "NB");
			route.addStop(38.5610099, -121.7646399, "Covell Blvd & Sycamore Ln", "WB");
			route.addStop(38.5610799, -121.77076, "Covell Blvd & John Jones Rd", "WB");
			route.addStop(38.56107, -121.7729699, "Covell Blvd & Shasta Dr", "WB");
			route.addStop(38.5604599, -121.78632, "Lake Blvd & Covell Blvd", "SB");
			route.addStop(38.55757, -121.7866499, "Lake Blvd & Oyster Bay", "SB");
			route.addStop(38.5549699, -121.78691, "Arlington Blvd & Lake Blvd", "SB");
			route.addStop(38.55371, -121.7848399, "Arlington Blvd & Cabot St", "SB");
			route.addStop(38.5534699, -121.7813699, "Arlington Blvd & Shasta Dr", "SB");
			route.addStop(38.5502799, -121.77927, "Arlington Blvd & Westernesse Rd", "SB");
			route.addStop(38.5487699, -121.7787999, "Arlington Blvd & Bucklebury Rd", "SB");
			route.addStop(38.5462399, -121.762, "Russell Blvd & Sycamore Ln", "EB");
			route.addStop(38.5437499, -121.74982, "Memorial Union Terminal Arrival & Howard Way", "NB");
			route.addStop(38.5607399, -121.7380799, "Covell Blvd & J St", "WB");
		} else if (routeName == "Q") {
			route.addStop(38.5439599, -121.74968, "Memorial Union & Howard Way", "NB");
			route.addStop(38.5464899, -121.7635, "Russell Blvd & Sycamore Ln", "WB");
			route.addStop(38.5465499, -121.7710199, "Russell Blvd & Arthur St", "WB");
			route.addStop(38.54888, -121.77851, "Arlington Blvd & Bucklebury Rd", "NB");
			route.addStop(38.5507099, -121.77896, "Arlington Blvd & Calaveras Ave", "NB");
			route.addStop(38.5538499, -121.78208, "Arlington Blvd & Shasta Dr", "NB");
			route.addStop(38.5539399, -121.78497, "Arlington Blvd & Cabot St", "NB");
			route.addStop(38.5552299, -121.78701, "Arlington Blvd & Lake Blvd", "NB");
			route.addStop(38.5581499, -121.78614, "Lake Blvd & Wood Circle", "NB");
			route.addStop(38.5604199, -121.78604, "Lake Blvd & Covell Blvd", "NB");
			route.addStop(38.56095, -121.78199, "Covell Blvd & West Area Bike Path", "EB");
			route.addStop(38.56085, -121.77824, "Covell Blvd & Denali Dr", "EB");
			route.addStop(38.56072, -121.77172, "Covell Blvd & Shasta Dr", "EB");
			route.addStop(38.5607, -121.7645399, "Covell Blvd & Sycamore Ln", "EB");
			route.addStop(38.5585599, -121.75871, "Anderson Rd & Hanover Dr", "SB");
			route.addStop(38.55615, -121.75788, "Villanova Dr & Anderson Rd", "EB");
			route.addStop(38.55572, -121.7518099, "14th St & Oak St", "EB");
			route.addStop(38.5558999, -121.74788, "14th St & B St", "EB");
			route.addStop(38.5571899, -121.7433, "F St & 14th St", "NB");
			route.addStop(38.5602299, -121.74466, "F St & Covell Blvd", "NB");
			route.addStop(38.56046, -121.73793, "Covell Blvd & J St", "EB");
			route.addStop(38.56216, -121.7319899, "Covell Blvd & Pole Line Rd", "EB");
			route.addStop(38.5632999, -121.71784, "Covell Blvd & Wright Blvd", "EB");
			route.addStop(38.5640699, -121.70887, "Covell Blvd & Alhambra Dr", "EB");
			route.addStop(38.5648, -121.7000299, "Covell Blvd & Mace Blvd", "EB");
			route.addStop(38.55775, -121.6942999, "Mace Blvd & 2nd St", "SB");
			route.addStop(38.5497399, -121.69457, "Mace Blvd & Chiles Rd", "SB");
			route.addStop(38.54842, -121.6962399, "Cowell Blvd & Sunrise", "WB");
			route.addStop(38.5480299, -121.69994, "Cowell Blvd & Ensenada Dr", "WB");
			route.addStop(38.5482299, -121.70305, "Cowell Blvd & La Vida Way", "WB");
			route.addStop(38.5476899, -121.70656, "Cowell Blvd & Ohlone St", "WB");
			route.addStop(38.5476399, -121.71264, "Cowell Blvd & Drummond Ave (WB)", "WB");
			route.addStop(38.5471299, -121.7133699, "Drummond Ave & Cowell", "SB");
			route.addStop(38.5437099, -121.71357, "Drummond Ave & Lillard Dr", "SB");
			route.addStop(38.5417799, -121.7175799, "Lillard Dr & Evans Ct", "WB");
			route.addStop(38.54136, -121.7207199, "Lillard Dr & Farragut Cir", "WB");
			route.addStop(38.5422099, -121.7243699, "Pole Line Rd & Cowell Blvd", "NB");
			route.addStop(38.5488299, -121.72777, "5th St & Pole Line Rd", "WB");
			route.addStop(38.5488999, -121.7307999, "5th St & Davis PW Corp Yard", "WB");
			route.addStop(38.5479299, -121.73789, "5th St & I St", "WB");
			route.addStop(38.5469499, -121.74358, "5th St & D St", "WB");
			route.addStop(38.5463799, -121.7468699, "Russell Blvd & A St", "WB");
			route.addStop(38.5437499, -121.74982, "Memorial Union Terminal Arrival & Howard Way", "NB");
			route.addStop(38.5602299, -121.74466, "F St & Covell Blvd", "NB");
		} else if (routeName == "S") {
			route.addStop(38.5507699, -121.69348, "Chiles Rd & Mace Blvd", "EB");
			route.addStop(38.5511999, -121.69071, "Glide Dr & El Cemonte Ave", "EB");
			route.addStop(38.55221, -121.6841999, "Glide Dr & Schmeiser Ave", "EB");
			route.addStop(38.5498299, -121.68376, "Cowell Blvd & Schmeiser Ave", "WB");
			route.addStop(38.5489599, -121.6900899, "Cowell Blvd & El Cemonte Ave", "WB");
			route.addStop(38.5488399, -121.6925799, "Cowell Blvd & Mace Blvd", "WB");
			route.addStop(38.54687, -121.6946399, "Mace Blvd & El Macero Dr", "SB");
			route.addStop(38.5410499, -121.6946399, "Mace Blvd & S El Macero Dr", "SB");
			route.addStop(38.5387999, -121.699, "Rosario St & Montgomery Ave", "NB");
			route.addStop(38.54149, -121.69939, "Rosario St & Almond Ln", "NB");
			route.addStop(38.5420299, -121.7012999, "Almond Ln & Deodara St", "WB");
			route.addStop(38.5415699, -121.70395, "Almond Ln & Meadowbrook Dr", "WB");
			route.addStop(38.5415599, -121.7063699, "Almond Ln & Willowbank Rd", "WB");
			route.addStop(38.53883, -121.7067099, "Willowbank Rd & Montgomery Ave", "SB");
			route.addStop(38.5388999, -121.7085399, "Montgomery Ave & Oakside  Dr", "WB");
			route.addStop(38.5401199, -121.7136799, "Danbury St & Drummond Ave", "NB");
			route.addStop(38.5424999, -121.71609, "Danbury St & Lillard Dr", "NB");
			route.addStop(38.5417799, -121.71758, "Lillard Dr & Evans Ct", "WB");
			route.addStop(38.54136, -121.7207199, "Lillard Dr & Farragut Cir", "WB");
			route.addStop(38.5401199, -121.7250899, "Cowell Blvd & Valdora St", "WB");
			route.addStop(38.5400399, -121.72754, "Cowell Blvd & Drew Ave", "WB");
			route.addStop(38.5401199, -121.73021, "Cowell Blvd & Research Park S Dr", "WB");
			route.addStop(38.5407999, -121.73832, "Richards Blvd & Olive Dr", "NB");
			route.addStop(38.5572499, -121.73629, "Drexel Dr & Hemlock Ln", "EB");
			route.addStop(38.5647999, -121.70003, "Covell Blvd & Mace Blvd", "EB");
			route.addStop(38.5559599, -121.75058, "14th St & Davis HS", "WB");
			route.addStop(38.5647999, -121.70003, "Covell Blvd & Mace Blvd", "EB");
			route.addStop(38.55775, -121.6942999, "Mace Blvd & 2nd St", "SB");
			route.addStop(38.5407999, -121.73832, "Richards Blvd & Olive Dr", "NB");
		} else if (routeName == "T") {
			route.addStop(38.5398399, -121.73081, "Cowell Blvd & Research Park S Dr", "EB");
			route.addStop(38.53974, -121.7268499, "Cowell Blvd & Drew Ave", "EB");
			route.addStop(38.54023, -121.7239799, "Cowell Blvd & Valdora St", "EB");
			route.addStop(38.54116, -121.72219, "Lillard Dr & Cowell Blvd", "EB");
			route.addStop(38.5416599, -121.71735, "Lillard Dr & Evans Ct", "EB");
			route.addStop(38.5421, -121.71601, "Danbury St & Lillard Ave", "SB");
			route.addStop(38.5402299, -121.71411, "Danbury St & Drummond Ave", "SB");
			route.addStop(38.5387, -121.70844, "Montgomery Ave & Oakside Dr", "EB");
			route.addStop(38.5388999, -121.70658, "Willowbank Rd & Montgomery Ave", "NB");
			route.addStop(38.54134, -121.70641, "Willowbank Rd & Almond Ln", "EB");
			route.addStop(38.5414699, -121.7037, "Almond Ln & Meadowbrook Dr", "EB");
			route.addStop(38.54198, -121.7009099, "Almond Ln & Deodara St", "EB");
			route.addStop(38.5423299, -121.6998399, "Rosario St & Almond Ln", "SB");
			route.addStop(38.5392399, -121.6992299, "Rosario St & Torrey St", "SB");
			route.addStop(38.5403999, -121.69435, "Mace Blvd & S El Macero Dr", "NB");
			route.addStop(38.54394, -121.69433, "Mace Blvd & San Marino Dr", "NB");
			route.addStop(38.5465499, -121.69423, "Mace Blvd & El Macero Dr", "NB");
			route.addStop(38.54864, -121.6936, "Cowell Blvd & Mace Blvd", "EB");
			route.addStop(38.54881, -121.6899699, "Cowell Blvd & El Cemonte Ave", "EB");
			route.addStop(38.5499099, -121.68349, "Cowell Blvd & Schmeiser Ave", "EB");
			route.addStop(38.5524299, -121.6843799, "Glide Dr & Schmeiser Ave", "WB");
			route.addStop(38.55136, -121.6909599, "Glide Dr & El Cemonte Ave", "WB");
			route.addStop(38.5510099, -121.69352, "Chiles Rd & Mace Blvd", "WB");
			route.addStop(38.55625, -121.69395, "Mace Blvd & 2nd St", "NB");
			route.addStop(38.55873, -121.6972199, "Alhambra Dr & Mace Blvd", "WB");
			route.addStop(38.5580799, -121.70126, "Alhambra Dr & Caceres Ct", "WB");
			route.addStop(38.5582599, -121.7057, "Alhambra Dr & 5th St", "WB");
			route.addStop(38.56016, -121.70877, "Alhambra Dr & Loyola Dr", "WB");
			route.addStop(38.5626699, -121.7146, "Monarch Ln & Campbell", "SB");
			route.addStop(38.56198, -121.7171999, "Temple Dr & Balsam Pl", "WB");
			route.addStop(38.55824, -121.71741, "Tulip Ln & Cascade Pl", "SB");
			route.addStop(38.5579, -121.7203099, "Loyola Dr & Regis Dr", "WB");
			route.addStop(38.5577699, -121.723, "Loyola Dr & Nutmeg Ln", "WB");
			route.addStop(38.5575999, -121.7273399, "Loyola Dr & Whittier Dr", "WB");
			route.addStop(38.5614499, -121.73099, "Pole Line Rd & Claremont Dr", "NB");
			route.addStop(38.5607399, -121.73808, "Covell Blvd & J St", "WB");
			route.addStop(38.56011, -121.7449599, "F St & Covell Blvd", "SB");
			route.addStop(38.55694, -121.7438099, "14th St & F St", "WB");
			route.addStop(38.5560899, -121.74815, "14th St & B St", "WB");
			route.addStop(38.5559599, -121.75058, "14th St & Davis HS", "WB");
			route.addStop(38.5559599, -121.75058, "14th St & Davis HS", "WB");
			route.addStop(38.5604599, -121.73793, "Covell Blvd & J St", "EB");
			route.addStop(38.56216, -121.7319899, "Covell Blvd & Pole Line Rd", "EB");
			route.addStop(38.5608299, -121.73121, "Pole Line Rd & Claremont Dr", "SB");
			route.addStop(38.55749, -121.7263, "Loyola Dr & West Regis", "EB");
			route.addStop(38.55758, -121.7225299, "Loyola Dr & Nutmeg Ln", "EB");
			route.addStop(38.55772, -121.72, "Loyola Dr & East Regis Dr", "EB");
			route.addStop(38.5580699, -121.71719, "Tulip Ln & Cascade Pl", "NB");
			route.addStop(38.5618, -121.71705, "Temple Dr & Balsam Pl", "EB");
			route.addStop(38.5634299, -121.71444, "Monarch Ln & Covell Blvd", "NB");
			route.addStop(38.5600799, -121.7090099, "Alhambra Dr & Loyola Dr", "EB");
			route.addStop(38.55817, -121.70626, "Alhambra & 5th/Verona", "SB");
			route.addStop(38.5578099, -121.7043, "Alhambra Dr & 5th St", "EB");
			route.addStop(38.55786, -121.6994599, "Alhambra Dr & Arroyo Ave", "EB");
			route.addStop(38.55855, -121.6969699, "Alhambra Dr & Mace Blvd", "EB");
			route.addStop(38.5577499, -121.6942999, "Mace Blvd & 2nd St", "SB");
			route.addStop(38.5507699, -121.69348, "Chiles Rd & Mace Blvd", "EB");
			route.addStop(38.5511999, -121.69071, "Glide Dr & El Cemonte Ave", "EB");
			route.addStop(38.55221, -121.6841999, "Glide Dr & Schmeiser Ave", "EB");
			route.addStop(38.5498299, -121.68376, "Cowell Blvd & Schmeiser Ave", "WB");
			route.addStop(38.5489599, -121.6900899, "Cowell Blvd & El Cemonte Ave", "WB");
			route.addStop(38.5488399, -121.6925799, "Cowell Blvd & Mace Blvd", "WB");
			route.addStop(38.54687, -121.6946399, "Mace Blvd & El Macero Dr", "SB");
			route.addStop(38.5410499, -121.6946399, "Mace Blvd & S El Macero Dr", "SB");
			route.addStop(38.5387999, -121.699, "Rosario St & Montgomery Ave", "NB");
			route.addStop(38.54149, -121.69939, "Rosario St & Almond Ln", "NB");
			route.addStop(38.5420299, -121.7012999, "Almond Ln & Deodara St", "WB");
			route.addStop(38.5415699, -121.70395, "Almond Ln & Meadowbrook Dr", "WB");
			route.addStop(38.5415599, -121.7063699, "Almond Ln & Willowbank Rd", "WB");
			route.addStop(38.53883, -121.7067099, "Willowbank Rd & Montgomery Ave", "SB");
			route.addStop(38.5388999, -121.7085399, "Montgomery Ave & Oakside  Dr", "WB");
			route.addStop(38.5401199, -121.7136799, "Danbury St & Drummond Ave", "NB");
			route.addStop(38.5424999, -121.71609, "Danbury St & Lillard Dr", "NB");
			route.addStop(38.5417799, -121.71758, "Lillard Dr & Evans Ct", "WB");
			route.addStop(38.54136, -121.7207199, "Lillard Dr & Farragut Cir", "WB");
			route.addStop(38.5401199, -121.7250899, "Cowell Blvd & Valdora St", "WB");
			route.addStop(38.5400399, -121.72754, "Cowell Blvd & Drew Ave", "WB");
			route.addStop(38.5401199, -121.73021, "Cowell Blvd & Research Park S Dr", "WB");
		} else if (routeName == "V") {
			route.addStop(38.5393499, -121.75308, "Silo Terminal & Center Island", "EB");
			route.addStop(38.5388399, -121.7622799, "Hutchison Dr & Ext Center", "WB");
			route.addStop(38.5371399, -121.76506, "Hutchison Dr & Health Sci Dr", "WB");
			route.addStop(38.539, -121.7713399, "Hutchison & Sage", "NB");
			route.addStop(38.5413599, -121.77133, "West Village Sq & Town Square", "NB");
			route.addStop(38.5408199, -121.77171, "West Village Sq & Community College", "SB");
			route.addStop(38.5387999, -121.7717699, "Hutchison & Sage", "SB");
			route.addStop(38.5351899, -121.76448, "Health Sciences Dist Lot 56 & ", "SB");
			route.addStop(38.5373699, -121.76423, "Hutchison Dr & Health Sci Drive", "EB");
			route.addStop(38.53903, -121.75577, "Hutchison Dr & Bioletti Way", "EB");
			route.addStop(38.5391399, -121.75309, "Hutchison & California", "WB");
		} else if (routeName == "W") {
			route.addStop(38.5393499, -121.75308, "Silo Terminal & Center Island", "EB");
			route.addStop(38.53919, -121.74837, "Hutchison Dr & Art Building", "EB");
			route.addStop(38.54003, -121.74605, "Hutchison Dr & A St", "EB");
			route.addStop(38.5415199, -121.74254, "1st St & C St", "EB");
			route.addStop(38.54064, -121.73854, "Richards Blvd & Olive Dr", "SB");
			route.addStop(38.5398399, -121.73081, "Cowell Blvd & Research Park S Dr", "EB");
			route.addStop(38.53974, -121.7268499, "Cowell Blvd & Drew Ave", "EB");
			route.addStop(38.5402299, -121.72398, "Cowell Blvd & Valdora St", "EB");
			route.addStop(38.54116, -121.72219, "Lillard Dr & Cowell Blvd", "EB");
			route.addStop(38.54166, -121.7173499, "Lillard Dr & Evans Ct", "EB");
			route.addStop(38.5431999, -121.71486, "Lillard & Drummond", "EB");
			route.addStop(38.54635, -121.71323, "Drummond & Albany", "NB");
			route.addStop(38.54324, -121.7225299, "Cowell Blvd & Halsey Cir", "WB");
			route.addStop(38.5401199, -121.72509, "Cowell Blvd & Valdora St", "WB");
			route.addStop(38.5400399, -121.7275399, "Cowell Blvd & Drew Ave", "WB");
			route.addStop(38.5401199, -121.7302099, "Cowell Blvd & Research Park S Dr", "WB");
			route.addStop(38.5407999, -121.7383199, "Richards Blvd & Olive Dr", "NB");
			route.addStop(38.5418199, -121.74205, "1st St & D St", "WB");
			route.addStop(38.54049, -121.74601, "A St & Hutchison", "SB");
			route.addStop(38.5391799, -121.7499899, "Hutchison & Shields Library", "WB");
			route.addStop(38.5391399, -121.75309, "Hutchison & California", "WB");
		} else if (routeName == "J-EXP") {
		} else if (routeName == "W-EXP") {
		} else if(routeName == "DEBUG"){
			//route.addStop(38.542008, -121.719196, "debug", "SB");
			route.addStop(38.5419763, -121.71911, "Gabe's Room", "EB");
			route.addStop(38.5422,-121.718304, "Light Pole", "EB");
		}


	}
	void resetApproach(List<LL> route){for(int pos = 0; pos < route.size(); pos++) route.get(pos).resetApproach();}
	
	private void speakToMe(final String speakStopName) {
		tts = new TextToSpeech(Main.this, new TextToSpeech.OnInitListener() {

			public void onInit(int status) {
				if (status != TextToSpeech.ERROR) {
					tts.setLanguage(Locale.US);
					tts.speak("Approaching " + speakStopName, TextToSpeech.QUEUE_ADD, null);
				}
			}
		});
	}
	void sayStop(int pos, List<LL> route, double bLat, double bLong, double minDistance, float bearing, TextView update) {
		String stop = route.get(pos).approach(bLat, bLong, minDistance,bearing,update);
		if (stop != "") {
			speakToMe(stop);
			//update.setText(stop);
		}
	}
	int selectRoute(String rC, List<LL> route) {
		int found = -1;
		for (int x = 0; x < route.size(); x++) {if(Integer.parseInt(route.get(x).getRC())==Integer.parseInt(rC)) found = x;}
		return found;
	}
	
	@Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
    }

	public void onClick(View cue) {
		
		boolean addInput = true;
		
		Button key1 = (Button) findViewById(R.id.button1);
		Button key2 = (Button) findViewById(R.id.button2);
		Button key3 = (Button) findViewById(R.id.button3);
		Button key4 = (Button) findViewById(R.id.button4);
		Button key5 = (Button) findViewById(R.id.button5);
		Button key6 = (Button) findViewById(R.id.button6);
		Button key7 = (Button) findViewById(R.id.button7);
		Button key8 = (Button) findViewById(R.id.button8);
		Button key9 = (Button) findViewById(R.id.button9);
		Button key0 = (Button) findViewById(R.id.button0);
		
		Button keyClear = (Button) findViewById(R.id.buttonClear);
		
		TextView textTOP = (TextView) findViewById(R.id.displayTOP);
		TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);
	
		if(textBOT.getText().toString().length()>12){addInput = false;}
		
		switch (cue.getId()) {
		case R.id.button0:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "0");
			break;
		case R.id.button1:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "1");
			break;
		case R.id.button2:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "2");
			break;
		case R.id.button3:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "3");
			break;
		case R.id.button4:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "4");
			break;
		case R.id.button5:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "5");
			break;
		case R.id.button6:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "6");
			break;
		case R.id.button7:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "7");
			break;
		case R.id.button8:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "8");
			break;
		case R.id.button9:
			if(addInput)textBOT.setText(textBOT.getText().toString() + "9");
			break;
		case R.id.buttonClear:
			if(textBOT.getText().toString().length()>0) textBOT.setText(textBOT.getText().toString().substring(0,textBOT.getText().toString().length()-1));
			break;
		case R.id.buttonSet:
			
			if(setCode){
				
				manager.removeUpdates(listener);
				
				key1.setOnClickListener(this);
				key2.setOnClickListener(this);
				key3.setOnClickListener(this);
				key4.setOnClickListener(this);
				key5.setOnClickListener(this);
				key6.setOnClickListener(this);
				key7.setOnClickListener(this);
				key8.setOnClickListener(this);
				key9.setOnClickListener(this);
				key0.setOnClickListener(this);
				
				keyClear.setOnClickListener(this);
				keyClear.setOnLongClickListener(this);
				resetApproach(route);
				
				textTOP.setText("Destination Number");
				textBOT.setText("");
				
				setCode = false;
			}
			else{
				if ((textBOT.getText().toString().length() <=4) && (textBOT.getText().toString().length() > 0) && selectRoute(textBOT.getText().toString(), route) > -1) {
					destinationCode = textBOT.getText().toString();
					
					textTOP.setText(route.get(selectRoute(textBOT.getText().toString(), route)).getHS());	
					textBOT.setText(route.get(selectRoute(textBOT.getText().toString(), route)).getbusStop());
	
					manager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 1200, 0, listener);
				} else {
					textTOP.setText("Invalid Pattern");
					textBOT.setText("Contact Dispatch");
				}
		 
		
				key1.setOnClickListener(null);
				key2.setOnClickListener(null);
				key3.setOnClickListener(null);
				key4.setOnClickListener(null);
				key5.setOnClickListener(null);
				key6.setOnClickListener(null);
				key7.setOnClickListener(null);
				key8.setOnClickListener(null);
				key9.setOnClickListener(null);
				key0.setOnClickListener(null);
				
				keyClear.setOnClickListener(null);	
				keyClear.setOnLongClickListener(null);
				setCode = true;
			}
			break;
		}
	}
			
	@Override
	public boolean onLongClick(View arg0) {
		// TODO Auto-generated method stub
		TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);
		
		textBOT.setText("");
		return false;}
}

