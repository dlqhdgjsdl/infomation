package sist.com.app1.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

public class TimeAdvice {//���� ���� �� before�̸��� �ٽɷ������� ���� ���´�. after�� �ݴ�
						//ProceedingJoinPoint�� xml���� aop:around(before after �ٻ��)������ ��밡���ϴ�.
	public void timeCheck(JoinPoint pjp)throws Throwable{
		long start=System.currentTimeMillis();
		//�ٽ� ������ �θ���.
		
		long end=System.currentTimeMillis();
		System.out.println((Math.random()*1000)+"�и��� �ҿ��");
		
	}
}
