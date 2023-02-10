package com.weed.wws;

import java.net.DatagramSocket;
import java.net.SocketException;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class InitSocketController {
	
	public static DatagramSocket resultDataSocket;
	
	public static DatagramSocket resultImgDataSocket;
	
	
	@PostConstruct
	private void init() {
		
        try {
        	//승호
        	DatagramSocket resultDataSocket = new DatagramSocket(50020);
        	DatagramSocket resultImgDataSocket = new DatagramSocket(50021);
        	
        	//지수
        	DatagramSocket resultDataSocket2 = new DatagramSocket(50013);
        	DatagramSocket resultImgDataSocket2 = new DatagramSocket(50014);
        	this.resultDataSocket=resultDataSocket2;
        	this.resultImgDataSocket=resultImgDataSocket2;
        	System.out.println("Binding Address1: "+resultDataSocket2.getLocalPort());
            System.out.println("Binding Address2: "+resultImgDataSocket2.getLocalPort());
        	System.out.println("socket bind");
		} catch (SocketException e) {
			// TODO Auto-generated catch block
			System.out.println("not connetion socket");
		}
	}
}
