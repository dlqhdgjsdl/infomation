package sist.com.app2.aop;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class CommandMain {
	public static void main(String[] args) {
		ApplicationContext app=new FileSystemXmlApplicationContext("src/main/java/sist/com/app2/aop/aop2.xml");
		Unit unit=(Unit)app.getBean("marine");
		unit.doCommand();
	}
}
