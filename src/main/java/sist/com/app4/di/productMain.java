package sist.com.app4.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class productMain {
	public static void main(String[] args) {
		ApplicationContext app=new FileSystemXmlApplicationContext("src/main/java/sist/com/app4/di/product.xml");	
/*	Product product=(Product)app.getBean("product");
	System.out.println(product);*/
		
		SiStore siStore=(SiStore)app.getBean("siStore");
		System.out.println(siStore.getProduct());
	}

}
