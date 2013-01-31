package com.example.transittalker;

public class prCode {
	private String iD;
	private String prMsg;
	
	public prCode(){iD = prMsg = "";}
	public prCode(String id,String pr){
		iD=id;
		prMsg=pr;
	}
	public String iD(){return iD;}
	public String prMsg(){return prMsg;}
}
