package sist.com.app1.aop;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class AppMain {
	

	public static void main(String[] args) {
		ApplicationContext app=new FileSystemXmlApplicationContext("src/main/java/sist/com/app1/aop/aop1.xml");
		Dao dap=(Dao)app.getBean("mydao");
		dap.insert(10);
		dap.select();
		}
}