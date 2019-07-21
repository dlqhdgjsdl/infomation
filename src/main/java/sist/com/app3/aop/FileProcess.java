package sist.com.app3.aop;

import org.aspectj.lang.JoinPoint;

import org.springframework.stereotype.Component;

@Component
public class FileProcess {
	public void fileValidate(){
		System.out.println("fileValidate");
	}
	public void fileProperties(){
		System.out.println("fileProperties");
	}
}
