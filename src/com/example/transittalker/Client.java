package com.example.transittalker;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

import android.util.Log;


public class Client {
	
	private SocketChannel socket;
	private HashMap<String,Integer> commandMap;
	private String androidID;
	private String hash;
	private ByteBuffer xmlData;
	private int readSize;
	
	public Client(String id, String ver){
		socket = null;
		androidID = id;
		hash=ver;
		commandMap = new HashMap<String,Integer>();
		setXmlData(null);
		readSize = 1;
		
	    commandMap.put("!xml",0);
	    commandMap.put("!dc",1);
	    commandMap.put("!size", 2);

	}

	@SuppressWarnings("unused")
	private void output(String ohaider) throws IOException{
		
		FileOutputStream fos = new FileOutputStream("C:/Users/Paul/Desktop/notreal.xml");
		fos.write(ohaider.getBytes());
		fos.close();
		
	}
	
	public static String bytesToHex(byte[] bytes) {
	    final char[] hexArray = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
	    char[] hexChars = new char[bytes.length * 2];
	    int v;
	    for ( int j = 0; j < bytes.length; j++ ) {
	        v = bytes[j] & 0xFF;
	        hexChars[j * 2] = hexArray[v >>> 4];
	        hexChars[j * 2 + 1] = hexArray[v & 0x0F];
	    }
	    return new String(hexChars);
	}
	
	public void connectToServer(String address,int port){
		
		try {
			socket = SocketChannel.open();
			socket.connect(new InetSocketAddress(address,port));
			socket.configureBlocking(false);
			while(!socket.finishConnect()){}
			startListening();
			socket.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private boolean processMessage(String message) throws IOException{

		String command = message.substring(0,message.indexOf(" "));
		String parameter = message.substring(message.indexOf(" ")+1);
		
		int key = -1;
		
		try{
			key = commandMap.get(command);
		}catch(NullPointerException nope){
			key = -1;
		}
		
		switch(key){
			case 0: //!xml
				String serverHash = parameter.substring(0,parameter.indexOf(" "));
				String serverxml = parameter.substring(parameter.indexOf(" ")+1);
				
			try {
				if(bytesToHex(MessageDigest.getInstance("MD5").digest(serverxml.getBytes())).compareTo(serverHash)!=0){
					socket.write(ByteBuffer.wrap("!status ERROR - incomplete file".getBytes()));
				}
				else{ 
					socket.write(ByteBuffer.wrap("!status SUCCESS - files updated".getBytes()));
					setXmlData(ByteBuffer.wrap(serverxml.getBytes()));
					hash = serverHash;
				}
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
				//output(serverxml);
				
				return true;
	        case 1: //dc
	        	return true;
	        case 2: //size
	        	readSize = Integer.parseInt(parameter);
	        	socket.write(ByteBuffer.wrap("!ready ".getBytes()));
	        default:
	            break;
		}
		return false;
	}
	
	private void startListening() throws IOException{
		Selector select = null;
		try {
			select = Selector.open();
			socket.register(select, SelectionKey.OP_READ);
		} catch (IOException e1) {
			e1.printStackTrace();
			return;
		}
		
		socket.write(ByteBuffer.wrap(("!hash "+hash+" "+androidID).getBytes()));
		
		while(true){
				
				try {
					if(select.select()<=0) continue;
				} catch (IOException e1) {
					e1.printStackTrace();
					return;
				}
				ByteBuffer temp = ByteBuffer.allocate(1024*8);
				ByteArrayOutputStream bais = new ByteArrayOutputStream();
			
				
				Set<SelectionKey> sk = select.selectedKeys();
				Iterator<SelectionKey> isk = sk.iterator();
				
				while(isk.hasNext()){
					
					SelectionKey seek = isk.next();
					int length;
					int total =0;
					if(seek.isReadable()){
						try {
						
							while(true){
									length = socket.read(temp);
									total += length;
									
									if(length>0)bais.write(ByteBuffer.allocate(length).put(temp.array(),0,length).array());
									if(total>=readSize) break;
									temp.clear();
							}
							total = 0;
							if(processMessage(bais.toString("UTF-8"))) return;
							bais.flush();

						} catch (IOException e) {
							e.printStackTrace();
						}
						catch(Error e){
							e.printStackTrace();
						}
					}
					
					isk.remove();
				}
		}
	}
	
	public String getHash() {return hash;}
	public ByteBuffer getXmlData() {return xmlData;}
	private void setXmlData(ByteBuffer xmlData) {this.xmlData = xmlData;}
}
