package com.example.talktomebus;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.speech.tts.TextToSpeech;
import android.view.Menu;
import android.view.View;
import android.view.WindowManager;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

public class Main extends Activity implements OnClickListener {

	double minDistance = 0.001; //0.00009;
	String destinationCode = "";
	boolean setDestination = false;
	TextView textTOP, textBOT;
	TextToSpeech tts;
	AudioManager aM;
	LocationManager manager;
	LocationListener listener;

	List<LL> route = new ArrayList<LL>();

	void speakToMe(final String speakStopName) {
		tts = new TextToSpeech(Main.this, new TextToSpeech.OnInitListener() {

			public void onInit(int status) {
				// TODO Auto-generated method stub
				if (status != TextToSpeech.ERROR) {
					tts.setLanguage(Locale.US);
					tts.speak("Approaching " + speakStopName, TextToSpeech.QUEUE_ADD, null);
				}
			}
		});
	}

	void populateRoute(LL route, String routeName, String rC, String hS) {

		//route.addStop(rC, hS, 9999, 9999, "", "");
		
		if (routeName == "A") {
		} else if (routeName == "A-LTD") {
		} else if (routeName == "B") {
		} else if (routeName == "C") {
		} else if (routeName == "D") {
		} else if (routeName == "E") {
		} else if (routeName == "F") {
		} else if (routeName == "G") {
		} else if (routeName == "J") {
			route.addStop(rC, hS, 38.5391399, -121.75309,"Hutchison & California","WB"); // NULL
			route.addStop(rC, hS, 38.55657, -121.7584199," Anderson Rd & Villanova Dr","NB"); // 153
			route.addStop(rC, hS, 38.5585599, -121.75871," Anderson Rd & Hanover Dr","SB"); // 155
			route.addStop(rC, hS, 38.5594499, -121.7584," Anderson Rd & Hanover Dr","NB"); // 154
			route.addStop(rC, hS, 38.55267, -121.7584999," Anderson Rd & Amherst Dr","NB"); // 157
			route.addStop(rC, hS, 38.55592, -121.7587399," Anderson Rd & Villanova Dr ","SB"); // 156
			route.addStop(rC, hS, 38.5472999, -121.75887," Anderson Rd & Russell Blvd ","SB"); // 159
			route.addStop(rC, hS, 38.55229, -121.7588099," Anderson Rd & Amherst Dr ","SB"); // 158
			route.addStop(rC, hS, 38.5619399, -121.76301," Alvarado Ave & Sycamore ","EB"); // 137
			route.addStop(rC, hS, 38.5620999, -121.76325," Alvarado Ave & Sycamore ","WB"); // 136
			route.addStop(rC, hS, 38.5619999, -121.75955," Alvarado Ave & Anderson ","EB"); // 135
			route.addStop(rC, hS, 38.5622099, -121.7593699," Alvarado Ave & Anderson ","WB"); // 134
			route.addStop(rC, hS, 38.5425099, -121.7608899," La Rue Rd & Orchard ","SB"); // 176
			route.addStop(rC, hS, 38.54402, -121.7598299," La Rue Rd & Orchard ","NB"); // 175
			route.addStop(rC, hS, 38.56253, -121.76504," Sycamore Ln & Alvarado ","SB"); // 138
			route.addStop(rC, hS, 38.5391399, -121.75309," Hutchison & California ","WB"); // 256
			route.addStop(rC, hS, 38.5631399, -121.76542," Sycamore Ln & Pepperwood Apts ","NB"); // 139
			route.addStop(rC, hS, 38.53903, -121.7557699," Hutchison Dr & Bioletti Way ","EB"); // 173
			route.addStop(rC, hS, 38.5682499, -121.76699," North Sycamore Loop &  ","NB"); // 144
			route.addStop(rC, hS, 38.56631, -121.76556," Sycamore Ln & Chaparral Apts ","NB"); // 142
			route.addStop(rC, hS, 38.56603, -121.7658399," Sycamore Ln & Chaparral Apts ","SB"); // 143
			route.addStop(rC, hS, 38.56445, -121.7656099," Sycamore Ln & Antelope ","NB"); // 140
			route.addStop(rC, hS, 38.5643599, -121.7658499," Sycamore Ln & Antelope ","SB"); // 141
			route.addStop(rC, hS, 38.5469099, -121.75857," Anderson Rd & Russell Blvd ","NB"); // 160
		} else if (routeName == "K") {
		} else if (routeName == "L") {
		} else if (routeName == "M") {
		} else if (routeName == "O") {
			route.addStop(rC, hS, 38.54856, -121.72763," 5th St & Pole Line Rd ","EB"); // 076
			route.addStop(rC, hS, 38.5488299, -121.7277699," 5th St & Pole Line Rd ","WB"); // 077
			route.addStop(rC, hS, 38.5490399, -121.7255299," 5th St & Pole Line Rd ","WB"); // 074
			route.addStop(rC, hS, 38.54874, -121.72565," 5th St & Pole Line Rd ","EB"); // 075
			route.addStop(rC, hS, 38.5515299, -121.72136, " 5th St & Cantrill ","WB"); // 072
			route.addStop(rC, hS, 38.5517799, -121.71904," 5th St & Cantrill  ","EB"); // 073
			route.addStop(rC, hS, 38.55466, -121.7090799," 5th St & Arroyo Ave ","EB"); // 070
			route.addStop(rC, hS, 38.5526299, -121.7165099," 5th St & San Rafael St ","WB"); // 071
			route.addStop(rC, hS, 38.5445499, -121.74169, " 3rd St & E St ","WB"); // 017
			route.addStop(rC, hS, 38.5488999, -121.7308," 5th St & Davis PW Corp Yard ","WB"); // 078
			route.addStop(rC, hS, 38.5439899, -121.73802," H St & Amtrak Station ","NB"); // 011
			route.addStop(rC, hS, 38.5393299, -121.75368," Silo Terminal & North Boarding Area ","WB"); // 258
			route.addStop(rC, hS, 38.5452799, -121.7449299, " B St & 4th St ","NB"); // 013
			route.addStop(rC, hS, 38.5442099, -121.74391, " 3rd St & C St ","WB"); // 015
			route.addStop(rC, hS, 38.5473799, -121.76198," Sycamore Ln & Wake Forest Dr ","SB"); // 179
			route.addStop(rC, hS, 38.5478399, -121.7341199, " L St & 4th St ","NB"); // 033
			route.addStop(rC, hS, 38.5526799, -121.71538, " 5th St & Pena Dr ","EB"); // 234
			route.addStop(rC, hS, 38.55786, -121.69946," Alhambra Dr & Arroyo Ave ","EB"); // 235
			route.addStop(rC, hS, 38.5457499, -121.7350899, " 3rd St & K St ","WB"); // 030
			route.addStop(rC, hS, 38.54564, -121.7344999, " 3rd St & K St ","EB"); /// 031
			route.addStop(rC, hS, 38.53903, -121.75577," Hutchison Dr & Bioletti Way ","EB"); // 173
			route.addStop(rC, hS, 38.54774, -121.73434, " L St & 425 ","SB"); // 032
			route.addStop(rC, hS, 38.55342, -121.71244," 5th St & Spafford St ","EB"); // 237
			route.addStop(rC, hS, 38.5408199, -121.77171," West Village Sq & Community College ","SB"); // 289
			route.addStop(rC, hS, 38.54136, -121.77133," West Village Sq & Town Square ","NB"); // 288
			route.addStop(rC, hS, 38.5502299, -121.7157, " Pena  & 2nd St. ","NB"); // 283
			route.addStop(rC, hS, 38.5537199, -121.69776," 2nd St. & Target Drive ","WB"); // 282
			route.addStop(rC, hS, 38.5370399, -121.7610699," La Rue Rd & Hutchison ","SB"); // 285
			route.addStop(rC, hS, 38.53584, -121.7588, " Dairy Road & Tercero ","NB"); // 284
			route.addStop(rC, hS, 38.5387999, -121.7717699," Hutchison & Sage ","SB"); // 287
			route.addStop(rC, hS, 38.5389999, -121.77134, " Hutchison & Sage ","NB"); // 286
			route.addStop(rC, hS, 38.55781, -121.7043, " Alhambra Dr & 5th St ","EB"); // 067
			route.addStop(rC, hS, 38.5585499, -121.69697," Alhambra Dr & Mace Blvd ","EB"); // 066
			route.addStop(rC, hS, 38.54266, -121.7439099, " 2nd St & B St ","EB"); // 005
			route.addStop(rC, hS, 38.5464899, -121.7635," Russell Blvd & Sycamore Ln ","WB"); // 178
			route.addStop(rC, hS, 38.54003, -121.7460499," Hutchison Dr & A St ","EB"); // 000
			route.addStop(rC, hS, 38.54314, -121.7411799, " 2nd St & E St ","EB"); // 007
			route.addStop(rC, hS, 38.53919, -121.74837," Hutchison Dr & Art Building ","EB"); // 169
			route.addStop(rC, hS, 38.5577499, -121.6942999," Mace Blvd & 2nd St ","SB"); // 243
			route.addStop(rC, hS, 38.53422, -121.7592999," La Rue Rd & Garrod Dr ","EB"); // 269
			route.addStop(rC, hS, 38.5469099, -121.75857," Anderson Rd & Russell Blvd ","NB"); // 160
			route.addStop(rC, hS, 38.5393299, -121.75368," Silo Terminal & North Boarding Area ","WB"); // NULL
			route.addStop(rC, hS, 38.5463799, -121.74687," Russell Blvd & A St ","WB"); // 021
			route.addStop(rC, hS, 38.55061, -121.76422, " Sycamore & 8th ","SB"); //292
			route.addStop(rC, hS, 38.53737, -121.7642299," Hutchison Dr & Health Sci Drive ","EB"); // 240
			
		} else if (routeName == "P") {
		} else if (routeName == "Q") {
		} else if (routeName == "S") {
		} else if (routeName == "T") {
		} else if (routeName == "V") {
		} else if (routeName == "W") {
			route.addStop(rC, hS, 38.5391399, -121.75309,"Hutchison & California","WB"); // NULL
			route.addStop(rC, hS, 38.5418199, -121.74205, "1st St & D St","WB"); // 003
			route.addStop(rC, hS, 38.54049, -121.74601, "A St & Hutchison ","SB"); // 001
			route.addStop(rC, hS, 38.5407999, -121.7383199,"Richards Blvd & Olive Dr ","NB"); // 242
			route.addStop(rC, hS, 38.5401199, -121.72509,"Cowell Blvd & Valdora St ","WB"); // 038
			route.addStop(rC, hS, 38.5401199, -121.7302099,"Cowell Blvd & Research Park S Dr ","WB"); // 034
			route.addStop(rC, hS, 38.53974, -121.7268499,"Cowell Blvd & Drew Ave ","EB"); // 037
			route.addStop(rC, hS, 38.54635, -121.71323, "Drummond & Albany ","NB"); // 255
			route.addStop(rC, hS, 38.5415199, -121.74254, "1st St & C St ","EB"); // 002
			route.addStop(rC, hS, 38.5431999, -121.71486, "Lillard & Drummond ","EB"); // 254
			route.addStop(rC, hS, 38.54003, -121.74605, "Hutchison Dr & A St ","EB"); // 000
			route.addStop(rC, hS, 38.5391799, -121.7499899, "Hutchison & Shields Library ","WB"); // 168
			route.addStop(rC, hS, 38.53919, -121.74837, "Hutchison Dr & Art Building ","EB"); // 169
			route.addStop(rC, hS, 38.54064, -121.73854,"Richards Blvd & Olive Dr S","SB"); // 004
			route.addStop(rC, hS, 38.54116, -121.72219,"Lillard Dr & Cowell Blvd ","EB"); // 297
			route.addStop(rC, hS, 38.54324, -121.7225299,"Cowell Blvd & Halsey Cir ","WB"); // 045
			route.addStop(rC, hS, 38.54166, -121.7173499,"Lillard Dr & Evans Ct ","EB"); // 174
			route.addStop(rC, hS, 38.5400399, -121.7275399,"Cowell Blvd & Drew Ave ","WB"); // 036
			route.addStop(rC, hS, 38.5393499, -121.75308,"Silo Terminal & Center Island ","EB"); // 257
			route.addStop(rC, hS, 38.5402299, -121.72398,"Cowell Blvd & Valdora St ","EB"); // 041
			route.addStop(rC, hS, 38.5398399, -121.73081,"Cowell Blvd & Research Park S Dr ","EB"); // 035
		} else if (routeName == "J-EXP") {
		} else if (routeName == "W-EXP") {
		} else if(routeName == "DEBUG"){
			//route.addStop(rC, hS, 38.542008, -121.719196, "debug", "SB");
			route.addStop(rC, hS, 38.5419763, -121.7911, "Gabe's Room", "EB");
		}
		

	}

	void sayStop(int pos, List<LL> route, double bLat, double bLong, double minDistance, float bearing, TextView update, Location currentLocation) {
		
		String stop = route.get(pos).approach(bLat, bLong, minDistance,bearing,update,currentLocation);
		if (stop != "") {
			speakToMe(stop);
			update.setText(stop);
		}
	}

	void addRoute(String rC, String routeName, String hS, List<LL> route) {
		LL list = new LL();
		populateRoute(list, routeName, rC, hS); // temporary
		route.add(list);
		list = null;
	}

	int selectRoute(String rC, List<LL> route) {
		int found = -1;
		for (int x = 0; x < route.size(); x++) {
			int a = Integer.parseInt(route.get(x).getRC());
			int b = Integer.parseInt(rC);
			if (a == b)found = x;
		}
		return found;
	}

	void resetApproach(List<LL> route){for(int pos = 0; pos < route.size(); pos++) route.get(pos).resetApproach();}
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		// default settings
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		// Settings
		setRequestedOrientation(8);
		getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
		aM = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
		aM.setStreamVolume(AudioManager.STREAM_MUSIC, aM.getStreamMaxVolume(AudioManager.STREAM_MUSIC), 0);
	
		// LL
		addRoute("0","DEBUG","DEBUG",route);
		/*addRoute("10","A","A DOWNTOWN/5TH STREET/ALHAMBRA",route);
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
		addRoute("020","W-EXP","W-EXP TO COWELL & VALDORA",route);*/

		// UI
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
		Button keySet = (Button) findViewById(R.id.buttonSet);

		textTOP = (TextView) findViewById(R.id.displayTOP);
		textBOT = (TextView) findViewById(R.id.displayBOTTOM);

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
		keySet.setOnClickListener(this);

		manager = (LocationManager) this.getSystemService(Context.LOCATION_SERVICE);

		listener = new LocationListener() {
			public void onLocationChanged(Location currentLocation) {
				textTOP.setText(currentLocation.getLatitude() + " " + currentLocation.getLongitude());
				sayStop(selectRoute(destinationCode, route), route, (double)currentLocation.getLatitude(),(double) currentLocation.getLongitude(),minDistance,currentLocation.getBearing(),textBOT,currentLocation);
			}

			public void onProviderDisabled(String arg0){}
			public void onStatusChanged(String provider, int status, Bundle extras){}
			public void onProviderEnabled(String arg0){}
		};
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.activity_main, menu);
		return true;
	}

	public void onClick(View cue) {
		if (cue.getId() == R.id.buttonClear) {
			setDestination = true;
			manager.removeUpdates(listener);
			resetApproach(route);
		}

		if (setDestination) {
			switch (cue.getId()) {
			case R.id.button0:
				destinationCode += "0";
				textBOT.setText(destinationCode);
				break;
			case R.id.button1:
				destinationCode += "1";
				textBOT.setText(destinationCode);
				break;
			case R.id.button2:
				destinationCode += "2";
				textBOT.setText(destinationCode);
				break;
			case R.id.button3:
				destinationCode += "3";
				textBOT.setText(destinationCode);
				break;
			case R.id.button4:
				destinationCode += "4";
				textBOT.setText(destinationCode);
				break;
			case R.id.button5:
				destinationCode += "5";
				textBOT.setText(destinationCode);
				break;
			case R.id.button6:
				destinationCode += "6";
				textBOT.setText(destinationCode);
				break;
			case R.id.button7:
				destinationCode += "7";
				textBOT.setText(destinationCode);
				break;
			case R.id.button8:
				destinationCode += "8";
				textBOT.setText(destinationCode);
				break;
			case R.id.button9:
				destinationCode += "9";
				textBOT.setText(destinationCode);
				break;
			case R.id.buttonClear:
				destinationCode = "";
				textTOP.setText("Destination Number");
				textBOT.setText(destinationCode);
				break;
			case R.id.buttonSet:
				textTOP.setText("Loading Pattern");
				textBOT.setText("Please Wait...");

				if ((destinationCode.length() <=4) && selectRoute(destinationCode, route) > -1) {
					textTOP.setText(route.get(selectRoute(destinationCode, route)).getHS());	
					textBOT.setText(route.get(selectRoute(destinationCode, route)).getbusStop());
					manager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 500, 0, listener);
				} else {
					textTOP.setText("Invalid Pattern");
					textBOT.setText("Contact Dispatch");
				}
				setDestination = false;
				break;
			}
		}
	}

}