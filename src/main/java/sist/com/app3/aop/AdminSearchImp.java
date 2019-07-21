package sist.com.app3.aop;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

@Component(value="search")//search.xml���� �ҷ��������� @component�� ����Ѵ�.
public class AdminSearchImp implements Search {
	@Inject //�ϳ��� ��ü���� �ҷ����� ������ inject�� ����ص� �ȴٿ�
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
