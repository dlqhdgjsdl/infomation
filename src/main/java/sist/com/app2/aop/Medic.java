package sist.com.app2.aop;


import java.lang.reflect.Method;

import org.springframework.aop.AfterReturningAdvice;

public class Medic implements AfterReturningAdvice{

	@Override
	public void afterReturning(Object arg0, Method arg1, Object[] arg2, Object target) throws Throwable {
		// TODO Auto-generated method stub
		Marine marine=(Marine)target;
		if(marine.getCommand() instanceof CommandAttack){
			System.out.println("Ä¡·áÁß");
		}
			
	}
		
}
