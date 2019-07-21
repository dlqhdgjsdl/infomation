package sist.com.app1.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

public class TimeAdvice {//공통 로직 이 before이면은 핵심로직보다 먼저 나온다. after는 반대
						//ProceedingJoinPoint은 xml에서 aop:around(before after 다사용)에서만 사용가능하다.
	public void timeCheck(JoinPoint pjp)throws Throwable{
		long start=System.currentTimeMillis();
		//핵심 로직을 부른다.
		
		long end=System.currentTimeMillis();
		System.out.println((Math.random()*1000)+"밀리초 소요딤");
		
	}
}
