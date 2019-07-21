package sist.com.core.di;

public class AdminServiceUtilImp implements ServiceUtil {
	private Dao dao;
	

	
	public AdminServiceUtilImp() {
		super();
	}
	public AdminServiceUtilImp(MyBatisDao dao) {
		super();
		this.dao = dao;
	}


	public Dao getDao() {
		return dao;
	}
	public void setDao(Dao dao) {
		this.dao = dao;
	}
	@Override
	public void fileCheck() {
		// TODO Auto-generated method stub
		dao.select();
		
	}

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		
	}
		

}
