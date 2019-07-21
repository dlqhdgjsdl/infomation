package sist.com.app3.di;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Properties;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class Main {

	public static void main(String[] args) {
		ApplicationContext app=new FileSystemXmlApplicationContext("src/main/java/sist/com/app3/di/com.xml");		
		Store store=(Store)app.getBean("store");
		Properties pro=store.getProperties();
		
		//System.out.println(pro.getProperty("url"));
		Iterator<Object>it=pro.keySet().iterator();		
		/*for(;it.hasNext();){
			System.out.println(it.next());
		}*/
		/*Enumeration<Object>en=pro.elements();
		while(en.hasMoreElements()){
			System.out.println(en.nextElement());
		}*/
		Iterator<Entry<Object, Object>>ite=pro.entrySet().iterator();
		
		while(ite.hasNext()){
			Entry<Object, Object>entry=ite.next();
			System.out.println("key="+entry.getKey()+" value="+entry.getValue());
		}
		
		
	}

}



