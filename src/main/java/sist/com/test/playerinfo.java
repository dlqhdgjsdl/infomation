package sist.com.test;

import org.springframework.stereotype.Component;

@Component(value="palyer")
public class playerinfo  implements AllPlayer{

	@Override
	public void name() {
		// TODO Auto-generated method stub
		System.out.println("bongnaldo");
	}

	@Override
	public void num() {
		// TODO Auto-generated method stub
		System.out.println("26");
	}

	@Override
	public void nation() {
		// TODO Auto-generated method stub
		System.out.println("south korea ");
	}
	
	
	
}
