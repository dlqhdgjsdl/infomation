package sist.com.app3.aop;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class SearchMain {
	
	public static void main(String[] args) {
		ApplicationContext app = new FileSystemXmlApplicationContext("src/main/java/sist/com/app3/aop/search.xml");
		Search search=(Search)app.getBean("search");
		//search.fileSearch();
		search.domSaxParsing();
		//search.xmlParsing();
		
	}
}
