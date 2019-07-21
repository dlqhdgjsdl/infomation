package sist.com.app6.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class AppMain {
	
	
	
	
	public static void main(String[] args) {
		ApplicationContext app = new FileSystemXmlApplicationContext("src/main/java/sist/com/app6/di/app.xml");
		System.out.println(app.getBean("app"));
	}
}
