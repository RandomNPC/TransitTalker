package com.example.transittalker.data;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class MultiHash<K,V> {
	
	private List<V> values;
	private HashMap<K,List<V>> mash;
	
	public MultiHash(){
		values = null;
		mash = new HashMap<K,List<V>>();
	}
	
	public void add(K val, V result){
		
		if(mash.get(val)==null){
			values = new LinkedList<V>();
			values.add(result);
			mash.put(val, values);
			values = null;
			
		}else{
			values = mash.get(val);
			values.add(result);
			mash.put(val, values);
			values = null;
		}
	}
	
	public void remove(K val){
		mash.remove(val);
	}

	public void remove(K val, V kill){
		if(mash.get(val)==null){
			return;
		}else{
			values = mash.get(val);
			while(values.contains(kill)){
				values.remove(kill);
			}
			mash.put(val, values);
			values = null;
		}
	}
	
	public List<V> get(K val){
		return mash.get(val);
	}
	
	public void clear(){
		mash.clear();
	}
	
	public int size(){
		return mash.size();
	}
	
}
