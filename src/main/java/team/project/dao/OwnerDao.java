package team.project.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mongodb.util.Hash;

import team.project.vo.CouponBean;
import team.project.vo.MenuAddBean;
import team.project.vo.OwnerBean;
import team.project.vo.ReviewBean;
import team.project.vo.StoreBean;
import team.project.vo.orderBean;

@Repository(value="ownerDao")
public class OwnerDao extends SqlSessionDaoSupport{
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public void joinOwner(OwnerBean bean) {
		this.getSqlSession().insert("joinOwner",bean);
	}
	public boolean loginOwner(String id,String pass) {
		return this.getSqlSession().selectOne("loginOwner",id).equals(pass)?true:false;
	}
	public int selectno(String ownerid) {
		return this.getSqlSession().selectOne("selectno",ownerid);
	}

	public void cateOwner(OwnerBean bean){
		this.getSqlSession().insert("cateOwner",bean);
	}
	public void addMenu(MenuAddBean bean){
		//System.out.println(bean);
		this.getSqlSession().insert("addMenu",bean);
	}
	public List<MenuAddBean>selectMenuList(MenuAddBean bean){
		//System.out.println("menuList"+this.getSqlSession().selectList("selectMenuList",bean));
		return this.getSqlSession().selectList("selectMenuList",bean);
	}
	public OwnerBean selectOwner(int ownerno){
		return this.getSqlSession().selectOne("selectOwner",ownerno);
	}
	public boolean selectCheckStore(int ownerno){
		return this.getSqlSession().selectOne("selectCheckStore",ownerno)==null?true:false;
	}
	
	public void storeModifyProcess(StoreBean bean){
		this.getSqlSession().insert("storeModifyProcess",bean);
	}
	public void storeAddProcess(StoreBean bean){
		this.getSqlSession().insert("storeAddProcess",bean);
	}
	public void updateOwner(OwnerBean bean) {
		this.getSqlSession().update("updateOwner",bean);
	}
	public StoreBean selectinfoStore(int ownerno) {
		return this.getSqlSession().selectOne("selectinfoStore",ownerno);
	}

	public int selectno(int ownerno) {
		return this.getSqlSession().selectOne("selectno",ownerno);
	}
	//coupondao start
	public void insertCoupon(CouponBean bean) {
		this.getSqlSession().insert("insertCoupon",bean);
	}
	public List<CouponBean> couponSelectList(Map<String,Object> map){
		return this.getSqlSession().selectList("couponSelectList",map);
	}
	public void couponDelete(int couponno){
		this.getSqlSession().delete("couponDelete", couponno);
		
	}
	public int totalRow(int ownerno){
		return this.getSqlSession().selectOne("totalRowCoupon",ownerno);
	}
	// coupondao exit
	
	//reviredao start
	public void insertReview(ReviewBean bean){
		this.getSqlSession().insert("insertReview",bean);
	}
	public List<ReviewBean> reviewSelect(Map<String,Object>map){
		return this.getSqlSession().selectList("reviewSelect",map);
	}
	public void reviewDelete(int reviewno){
		System.out.println(reviewno);
		this.getSqlSession().delete("reviewDelete",reviewno);
	}
	
	//order start
	public List<orderBean> orderSelect(int userno){
		return this.getSqlSession().selectList("orderSelect",userno);
	}
	public void updateOrder(HashMap<String,Object> map){
		this.getSqlSession().update("updateOrder",map);
	}
}