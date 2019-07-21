package sist.com.app3.aop;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

@Component(value="search")//search.xml에서 불러오기위해 @component를 사용한다.
public class AdminSearchImp implements Search {
	@Inject //하나의 객체만을 불러오기 때문에 inject를 사용해도 된다요
	private FileProcess fileprc;
	
	@Override
	public void fileSearch() {
		// TODO Auto-generated method stub
		System.out.println("fileSearch");
		fileprc.fileProperties();
		fileprc.fileValidate();
	}

	@Override
	public void xmlParsing() {
		// TODO Auto-generated method stub
		System.out.println("xmlParsing");
	}

	@Override
	public void domSaxParsing() {
		// TODO Auto-generated method stub
		//int rs=10/0;
		System.out.println("domSaxParsing");
	}
	
}
