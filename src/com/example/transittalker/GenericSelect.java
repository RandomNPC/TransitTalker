package com.example.transittalker;

import java.util.List;

public class GenericSelect{
	
	private int pointer;
	private int max;
	
	public GenericSelect(){
		pointer = 0;
		max = 0;
	}
	
	public void setMax(int max){
		this.max = max;
	}
	
	public boolean next(){
	
		if(pointer < max-1){
			pointer++;
			return true;
		}else return false;
		
	}
	
	public boolean prev(){
		if(pointer > 0){
			pointer--;
			return true;
		}
		return false;
	}
	
	public void reset(){
		pointer = 0;
	}
	
	public int pointer(){
		return pointer;
	}
	
	public boolean isMax(){
		if(pointer==max-1) return true;
		else return false;
	}
	
	public boolean isMin(){
		if(pointer == 0) return true;
		else return false;
	}
	
	public <T> T getObject(List<T> container){
		return container.get(pointer);
	}
}