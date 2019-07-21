package sist.com.app2.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class CarMain {
		
	public static void main(String[] args) {
		ApplicationContext app=new FileSystemXmlApplicationContext("src/main/java/sist/com/app2/di/car.xml");
		
		CarCenter2 carcenter=(CarCenter2)app.getBean("carcenter2");
		System.out.println(carcenter.getList());
	}
}
