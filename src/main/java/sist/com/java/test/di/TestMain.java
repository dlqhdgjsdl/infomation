package sist.com.java.test.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import sist.com.app7.di.ConfigDemo;

public class TestMain {
	public static void main(String[] args) {
		ApplicationContext app = new AnnotationConfigApplicationContext(TestDemo.class);
		ApplicationContext app1 = new AnnotationConfigApplicationContext(ConfigDemo.class);
		ConfigDemo configDemo = new ConfigDemo();
		System.out.println(app.getBean("getTestCar"));
		System.out.println(app1.getBean("book1"));
	}
	
}
