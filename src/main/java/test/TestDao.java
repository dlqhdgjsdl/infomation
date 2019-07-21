package test;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.w3c.dom.stylesheets.LinkStyle;

@Repository
public class TestDao extends SqlSessionDaoSupport {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public void insertWriter(TestBean bean){
		this.getSqlSession().insert("insertWriter",bean);
	}
	public List<TestBean> showlist(){
		return this.getSqlSession().selectList("showlist");
	}
	public List<TestBean> showInfo(String t4){
		return this.getSqlSession().selectList("showInfo",t4);
	}
/*	public TestBean t2id(String t2){
		return this.getSqlSession().selectOne("t2id", t2);
	}*/
}
