package sist.com.app7.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class WebMain {
	public static void main(String[] args) {//xml�� ������� �ʰ� �ڹٷθ� ����ϴ� ��� 
		ApplicationContext app = new AnnotationConfigApplicationContext(ConfigDemo.class);
		/*System.out.println(app.getBean("getGH1"));
		*/
	System.out.println(app.getBean("book1"));
	System.out.println(app.getBean("car1"));
	}
}
