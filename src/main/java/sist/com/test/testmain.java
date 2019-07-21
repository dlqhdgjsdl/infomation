package sist.com.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class testmain {
	
	
	public static void main(String[] args) {
		ApplicationContext app = new FileSystemXmlApplicationContext("src/main/java/sist/com/test/test1.xml");
		testbean t1 =(testbean)app.getBean("testbean");
		
		System.out.println(t1.getMap());
		
		
		/*t.setName("bongbong");*/
		/*System.out.println(t);*/
		
		
	
	}
}

