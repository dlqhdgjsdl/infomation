package sist.com.app6.di;

import javax.inject.Inject;


import org.springframework.stereotype.Component;

@Component(value="appai")
public class ApplicationInterFace {
	//@Inject �ڹٳ� ������ �Ѵ� ��� ���� @Autowired�� ������������ ��밡��
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
