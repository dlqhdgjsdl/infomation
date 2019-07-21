package sist.com.app2.aop;


import static org.hamcrest.CoreMatchers.instanceOf;

import java.lang.reflect.Method;

import org.springframework.aop.MethodBeforeAdvice;

public class MapBeforeProcess implements MethodBeforeAdvice {

	
	
	
	@Override
	public void before(Method arg0, Object[] arg1, Object target) throws Throwable {
		// TODO Auto-generated method stub
		Marine marine=(Marine)target;
		if(marine.getCommand() instanceof CommandAttack){
		System.out.println("СЄТћСп");
			}
		}
	}
	

