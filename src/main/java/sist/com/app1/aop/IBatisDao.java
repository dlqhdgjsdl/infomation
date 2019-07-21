package sist.com.app1.aop;

public class IBatisDao implements Dao {

	
	
	
	
	@Override
	public void insert(int data) {
		// TODO Auto-generated method stub
		System.out.println("IbatisDao.insert");
	}

	@Override
	public void select() {
		// TODO Auto-generated method stub
		System.out.println("IbatisDao.select");
	}
	
}
