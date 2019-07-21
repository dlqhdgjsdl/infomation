package sist.com.core.di;

public class MyBatisDao implements Dao{
private OpenSessionEx opensession;

public OpenSessionEx getOpensession() {
	return opensession;
}

public void setOpensession(OpenSessionEx opensession) {
	this.opensession = opensession;
}
	@Override 
	public void select() {
		// TODO Auto-generated method stub
		opensession.connection();
		System.out.println("MyBatisDaoSELECT");
	}


	@Override
	public void update() {
		// TODO Auto-generated method stub
		System.out.println("ggg");
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		
	}
	
}
