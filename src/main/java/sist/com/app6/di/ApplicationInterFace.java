package sist.com.app6.di;

import javax.inject.Inject;


import org.springframework.stereotype.Component;

@Component(value="appai")
public class ApplicationInterFace {
	//@Inject 자바나 스프링 둘다 사용 가능 @Autowired는 스프링에서만 사용가능
	private java java1;

	
	
	public java getJava1() {
		return java1;
	}

	public void setJava1(java java1) {
		this.java1 = java1;
	}

	@Override
	public String toString() {
		return "ApplicationInterFace [java1=" + java1 + "]";
	}
	
	
	
}
