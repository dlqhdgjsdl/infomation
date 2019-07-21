package sist.com.app1.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class AppBookMain {
	public static void main(String[] args) {
		ApplicationContext app=new FileSystemXmlApplicationContext("src/main/java/sist/com/app1/di/app3.xml");
		/*AppBook1 appBook1=(AppBook1)app.getBean("appBook1");
	System.out.println(appBook1.getBook().getIsbn());
	System.out.println(appBook1.getBook2().getIsbn());*/
		
		
	/*	AppBook2 appBook2=(AppBook2)app.getBean("appBook2");
		System.out.println(appBook2.getBook().getIsbn());*/
		
		AppBook3 appBook3=(AppBook3)app.getBean("app3");
		
		for(Book b:appBook3.getList()){
			System.out.println(b);
		}
		
	}
}
