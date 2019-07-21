package sist.com.app1.aop;

public class MyBatisDao implements Dao {

	@Override
	public void insert(int data) {
		// TODO Auto-generated method stub
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("tt");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	@Override
	public void select() {
		// TODO Auto-generated method stub
		System.out.println("MyBatisDao.select");
	}

	
	
}
