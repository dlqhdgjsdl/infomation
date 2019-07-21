package sist.com.java.test.di;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
//@ImportResource({"sist/com/app3/di/com/xml"})//xml만 가져 올수 있다. 따라서 자바를 불러올려면 생성자를 생성해서 데리고 오던가 해야된다 .
public class TestDemo {
@Bean
public TestCar getTestCar(){
	return new TestCar("붕붕","주황",50000);	
	}
@Bean
public TestCar getTestCar1(){
	return new TestCar("방방","검정",4000);	
	}
@Bean
public TestGroup gettc(){
	return new TestGroup(getTestCar());
}

}
