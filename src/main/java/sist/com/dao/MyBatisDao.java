package sist.com.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import sist.com.model.EmpBean;

public class MyBatisDao  extends SqlSessionDaoSupport{
	
	public boolean loginProcess(String id,String pw){
		String dbPass=this.getSqlSession().selectOne("loginProcess", id);
		return dbPass!=null&&dbPass.equals(pw)?true:false;
	}
/*	public List<empBean> empList(){
		List<empBean> list = this.getSqlSession().selectList("empList");
		return list;
	}*/
	
	public List<EmpBean>selectEmpProcess(){
		return this.getSqlSession().selectList("selectEmpProcess");
		 
	}
	public List<EmpBean>selectdbemp(){
		return this.getSqlSession().selectList("selectdbemp");
		
	}
}
