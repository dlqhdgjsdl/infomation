package sist.com.test;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class PlayerProcess {
	
	@Before("execution(public * sist.com.test.AllPlayer*.*())")
	public void Beforedata(JoinPoint joinPoint){
		System.out.println("----------");
	}
	@After("execution(public * sist.com.test.AllPlayer*.*())")
	public void afterdata(JoinPoint joinPoint){
		System.out.println("");
		
	}
}
