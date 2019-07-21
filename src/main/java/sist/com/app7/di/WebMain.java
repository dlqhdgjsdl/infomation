package sist.com.app7.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class WebMain {
	public static void main(String[] args) {//xml을 사용하지 않고 자바로만 사용하는 방법 
		ApplicationContext app = new AnnotationConfigApplicationContext(ConfigDemo.class);
		/*System.out.println(app.getBean("getGH1"));
		*/
	System.out.println(app.getBean("book1"));
	System.out.println(app.getBean("car1"));
	}
}
