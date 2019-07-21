package sist.com.app7.di;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ImportResource({"sist/com/app1/di/app.xml","sist/com/app2/di/car.xml"})//�ٸ���Ű���� �ִ� ���� �ڷᵵ �ҷ��ü� �ְ� ���ش� .
public class ConfigDemo {
	
	@Bean(name="jspBean")
	public JspApp getJspApp(){
		return new JspApp("ǥ����", "response","loginServlet","forward");
	}
	@Bean(name="jspBean2")
	public JspApp getJspApp2(){
		JspApp jspApp=new JspApp();
		jspApp.setScriptlet("<% %>");
		jspApp.setPrimitiveObject("session");
		jspApp.setServlet("listServelet");
		jspApp.setActionTag("<incluede>");
		return jspApp;
	}
	@Bean
	public WebContainer getGH(){
		return new WebContainer(getJspApp());
	}
	@Bean
	public WebContainer getGH1(){
		return new WebContainer(getJspApp2());
		
	}
}
