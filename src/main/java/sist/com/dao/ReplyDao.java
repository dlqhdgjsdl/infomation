package sist.com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.com.model.ReBean;
import sist.com.model.ReplyBean;

@Repository(value="replyDao")
public class ReplyDao extends SqlSessionDaoSupport {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	public void insertReply(ReplyBean bean){
		this.getSqlSession().insert("insertReply",bean);
	}
	public void reInsert(ReBean bean){
		this.getSqlSession().insert("reInsert",bean);
	}
	public List<ReBean>reselect(){
		return this.getSqlSession().selectList("reselect");
	}
	public void ReDelete(int no){
		this.getSqlSession().delete("ReDelete", no);
	}
	public void ReUpdate(int no , String contents){
	HashMap<String,Object>map=new HashMap<String, Object>();
	map.put("no",no);
	map.put("contents",contents);
	System.out.println(map);
	this.getSqlSession().update("ReUpdate",map);
	
	}
	public List<ReBean>selectre(){
		return this.getSqlSession().selectList("selectre");
	}
	
}
