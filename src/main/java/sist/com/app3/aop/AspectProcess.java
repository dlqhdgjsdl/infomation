package sist.com.app3.aop;



import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect 
@Component
public class AspectProcess {
	
/*	@Before("execution(public * sist.com.app3.aop.Search*.*())")
	public void dataAttributeSearch(JoinPoint joinPoint){
		Signature signature=joinPoint.getSignature();
		String methodName=signature.getName();
		if(methodName.equals("fileSearch")){
			System.out.println("FileSearchBefore");
			}else if(methodName.equals("xmlParsing")){
			System.out.println("xmlParsingBefore");
			}else if(methodName.equals("domSaxParsing")){
			System.out.println("domSaxParsingBefore");
			}
		//System.out.println("dataAttributeSearch");
		
	
	}
	@After("execution(public * sist.com.app3.aop.Search*.*())")//오류에 상관없이 불러진다.(domSaxParsing(10/0)인셉션발생)
	public void dataAttributeSearchafter(JoinPoint joinPoint){
			System.out.println("dataAttributeSearchafter");
			
	}
	@AfterReturning("execution(public * sist.com.app3.aop.Search*.*())")//프로세스가 완전히 수행되고 나오는 메소드라서 오류가 생기면 나오지가 않는다.
	public void dataAttributeSearchafterreturning(JoinPoint joinPoint){
		System.out.println("dataAttributeSearchafterreturning");
	}*/
	@Around("execution(public * sist.com.app3.aop.Search*.*())")
	public void aroundMethod(ProceedingJoinPoint joinPoint){
		System.out.println("BeforeMethodProcess");
		try {
			joinPoint.proceed();			
		} catch (Throwable e) {
			// TODO: handle exception
		}
		System.out.println("AfterMethod");
		
	}
	
}
