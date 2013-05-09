package com.example.transittalker;

import android.content.SharedPreferences;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class MyUI implements OnClickListener,OnLongClickListener{

	private Mainspace instance;
	private int focus;
	private Listener listen;
	private TextView textTOP,textBOT,textMID;
	private SharedPreferences spf;
	private boolean first;
	
	private Button btn0,btn1,btn2,btn3,btn4,btn5,btn6,btn7,btn8,btn9,btnClear,btnSet;
	
	
	public MyUI(Mainspace activity){
		this.instance = activity;
		this.btn0 = (Button) instance.findViewById(R.id.button0);
		this.btn1 = (Button) instance.findViewById(R.id.button1);
		this.btn2 = (Button) instance.findViewById(R.id.button2);
		this.btn3 = (Button) instance.findViewById(R.id.button3);
		this.btn4 = (Button) instance.findViewById(R.id.button4);
		this.btn5 = (Button) instance.findViewById(R.id.button5);
		this.btn6 = (Button) instance.findViewById(R.id.button6);
		this.btn7 = (Button) instance.findViewById(R.id.button7);
		this.btn8 = (Button) instance.findViewById(R.id.button8);
		this.btn9 = (Button) instance.findViewById(R.id.button9);
		this.btnClear = (Button) instance.findViewById(R.id.buttonClear);
		this.btnSet = (Button) instance.findViewById(R.id.buttonSet);
		
		btn0.setOnClickListener(this);
		btn1.setOnClickListener(this);
		btn2.setOnClickListener(this);
		btn3.setOnClickListener(this);
		btn4.setOnClickListener(this);
		btn5.setOnClickListener(this);
		btn6.setOnClickListener(this);
		btn7.setOnClickListener(this);
		btn8.setOnClickListener(this);
		btn9.setOnClickListener(this);
		btnClear.setOnClickListener(this);
		btnSet.setOnClickListener(this);

		
		this.focus = 0;
		this.first = false;
		this.listen = activity;
		this.textTOP = (TextView) activity.findViewById(R.id.displayTOP);
		this.textMID = (TextView) activity.findViewById(R.id.displayMID);
		this.textBOT = (TextView) activity.findViewById(R.id.displayBOTTOM);
		spf = instance.getSharedPreferences("savedroutes", 0);
	}

	public interface Listener{
		public void resetRoutes();
		public void newDestination(String dest);
		public void newPR(String pr);
		public void destinationPicked();
		public void speakDest();
	}
	
	void changeVisibility(int imageID, int status){
		ImageView image = (ImageView) instance.findViewById(imageID);
		image.setVisibility(status);
	}
	
	public void setUI(int focus) {
		this.focus = focus;
	}
	
	public int getUI(){return focus;}
	
	private void getNumericValue(int id){
		Button b = (Button) instance.findViewById(id);
		if(b!=null) textBOT.setText(textBOT.getText().toString()+b.getText().toString());
	}
	
	
	private void UI_destination(int mode,int id){
		switch(id){
			case R.id.buttonClear:
				if(textBOT.getText().toString().length()>0){ 
					first = false;
					textBOT.setText(textBOT.getText().toString().substring(0,textBOT.getText().toString().length()-1));
				}
				break;
			case R.id.buttonSet:
				btnClear.setOnLongClickListener(null);
				btnClear.setText("P/R");
				SharedPreferences.Editor spe = spf.edit();
				switch(mode){
					case R.id.button4:
						spe.putString("A", textBOT.getText().toString());
						break;
					case R.id.button9:
						spe.putString("B", textBOT.getText().toString());
						break;
				}
				spe.commit();
				listen.newDestination(textBOT.getText().toString());
				break;
			default:
				if(first){
					textBOT.setText("");
					first = false;
				}
				if(textBOT.getText().toString().length()>12) break;
				else getNumericValue(id);
				break;
		}
	}
	
	private void UI_PR(int id){
		
		switch(id){
			case R.id.buttonClear:
				if(textBOT.getText().toString().length()>0) 
					textBOT.setText(textBOT.getText().toString().substring(0,textBOT.getText().toString().length()-1));
				break;
			case R.id.buttonSet:
				btnClear.setOnLongClickListener(null);
				btnClear.setText("P/R");
				listen.newPR(textBOT.getText().toString());
				break;
			default:
				if(textBOT.getText().toString().length()>12) break;
				else getNumericValue(id);
				break;
		}
	}
	
	private void UI_multiSelect(int id){
		switch(id){
			case R.id.buttonSet:
				focus = 0;
				listen.destinationPicked();
				break;
			default:
				break;
		}
	}
	
	public void onClick(View oc) {
		
		if(focus==0){
			
			focus=oc.getId(); //I pressed the first button, so do this once. Will reenter this statement when focus = 0
			first = true;
			btnClear.setOnLongClickListener(this);
			btnClear.setText("BKSP");
			
			switch(focus){
				case R.id.button0:
					btnClear.setOnLongClickListener(null);
					btnClear.setText("P/R");
					listen.speakDest();
					focus = 0;
					return;
				case R.id.buttonClear: //PR code
					changeVisibility(R.id.pr, View.INVISIBLE);
					textTOP.setText("Enter P/R Code");
					textMID.setText("");
					textBOT.setText("");
					return;
				case R.id.buttonSet: //destination
					listen.resetRoutes();
					textTOP.setText("Destination Number");
					textMID.setText("");
					textBOT.setText("");
					return;
				case R.id.button4:
					listen.resetRoutes();
					textTOP.setText("Destination Number");
					textMID.setText("");
					textBOT.setText(spf.getString("A", "")); //get from preferences
					return;
				case R.id.button9:
					listen.resetRoutes();
					textTOP.setText("Destination Number");
					textMID.setText("");
					textBOT.setText(spf.getString("B", "")); // get from preferences
					return;
				case 10: //never gets called cause properties are set externally
					return;
				default:
					break;
			}
		
		}
		
		switch(focus){
			case R.id.buttonClear:
				UI_PR(oc.getId());
				break;
			case R.id.buttonSet:
			case R.id.button4:
			case R.id.button9:
				UI_destination(focus,oc.getId());
				break;
			case 10:
				UI_multiSelect(oc.getId());
				break;
			default:
				focus = 0;
				break;
		}
	}
	
	public boolean onLongClick(View olc) {
		textBOT.setText("");
		return false;
	}
	
}
