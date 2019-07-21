package sist.com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.com.model.InterLoginProcess;
import sist.com.model.InterProduct;

@Repository(value="interprocessdao")
public class interProcessDao extends SqlSessionDaoSupport {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	public  InterLoginProcess  selectLogin(){
		System.out.println("tt");
		return this.getSqlSession().selectOne("selectLogin");
	}
	
	
	public void InsertProductex1(InterProduct bean){
		this.getSqlSession().insert("InsertProductex1",bean);
	}
	public List<InterProduct> listAction(String id){
		return this.getSqlSession().selectList("listAction", id);
	}
	public InterProduct selectno(int no){
		return this.getSqlSession().selectOne("selectno", no);
	}
	
}
