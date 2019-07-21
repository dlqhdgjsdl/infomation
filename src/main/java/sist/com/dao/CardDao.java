package sist.com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.com.model.AjaxBean;
import sist.com.model.CardBean;
import sist.com.model.ReplyBean;
@Repository(value="cardDao")
public class CardDao extends SqlSessionDaoSupport {
	
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	public void insertCard(CardBean bean){
		this.getSqlSession().insert("insertCard",bean);
	}
	public List<CardBean> selectCard(HashMap<String,Object> map){
		return getSqlSession().selectList("selectCard",map);
	}
	public void updateHitCard(int no){
		this.getSqlSession().update("updateHitCard",no);
	}
	public CardBean	selectInfo(int no){
		return this.getSqlSession().selectOne("selectInfo",no);
	}
	public void delete(int no){
		 this.getSqlSession().delete("delete",no);
	}
	public void modify(CardBean cardBean){
		this.getSqlSession().update("modify",cardBean);
	}
	public Integer getTotalRowCard(){
		System.out.println("getTotalRowCard");
		return this.getSqlSession().selectOne("getTotalRowCard");
	}
	public Integer replygetSequence(){
		return this.getSqlSession().selectOne("replygetSequence");
	}
	public void replyInsertCard(ReplyBean bean){
		this.getSqlSession().insert("replyInsertCard",bean);
	}
	public List<ReplyBean>selectReply(int infopk){
		return this.getSqlSession().selectList("selectReply",infopk);
		
	}
	public List<CardBean>selectcardbean(){
		return this.getSqlSession().selectList("selectcardbean");
	}
	public void ajaxInsert(AjaxBean bean){
		this.getSqlSession().insert("ajaxInsert",bean);
	}
	public List<AjaxBean>selectajaxbean(){
		return this.getSqlSession().selectList("selectajaxbean");
	}
	public List<AjaxBean> ajaxList(){
		return this.getSqlSession().selectList("ajaxList");
	}
	
}




