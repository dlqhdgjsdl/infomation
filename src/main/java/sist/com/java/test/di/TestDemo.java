package sist.com.java.test.di;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
//@ImportResource({"sist/com/app3/di/com/xml"})//xml�� ���� �ü� �ִ�. ���� �ڹٸ� �ҷ��÷��� �����ڸ� �����ؼ� ������ ������ �ؾߵȴ� .
public class TestDemo {
@Bean
public TestCar getTestCar(){
	return new TestCar("�غ�","��Ȳ",50000);	
	}
@Bean
public TestCar getTestCar1(){
	return new TestCar("���","����",4000);	
	}
@Bean
public TestGroup gettc(){
	return new TestGroup(getTestCar());
}

}
