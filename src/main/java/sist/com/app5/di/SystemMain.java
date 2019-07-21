package sist.com.app5.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class SystemMain {
	
	public static void main(String[] args) {
		ApplicationContext app=new FileSystemXmlApplicationContext("src/main/java/sist/com/app5/di/member.xml");
		//System.out.println(app.getBean("member"));
		SystemProcess sp=(SystemProcess)app.getBean("systemProcess");
		System.out.println(sp.getDbServer());
	}
	
	

}
