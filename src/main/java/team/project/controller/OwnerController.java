package team.project.controller;

import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import team.project.dao.OwnerDao;
import team.project.vo.CouponBean;
import team.project.vo.OwnerBean;
import team.project.vo.ReviewBean;
import team.project.vo.StoreBean;
import team.project.vo.orderBean;

@Controller
public class OwnerController {
	@Resource(name="ownerDao") 
	private OwnerDao ownerDao;
	@Resource(name="couponPagin")
	private CouponPagin pagin;
	@Resource(name="reviewPagin")
	private ReviewPagin pagin1;
	
	
	@RequestMapping(value="owner.do")
	public String OwnerTest(){
		System.out.println("OwnerTest");
		return "TeamProject/Main";
	}
	
	
	@RequestMapping(value ="ownerlogin.do")
	public String LoginOwner(@RequestParam(value = "id")String id,@RequestParam(value = "pass")String pass,HttpSession session) {
		System.out.println("login");
		System.out.println(id+"  "+ pass);
		if(ownerDao.loginOwner(id, pass)==true) {
			session.setAttribute("owner",ownerDao.selectOwner(ownerDao.selectno(id)));
			
			session.setMaxInactiveInterval(60);
			System.out.println("success");
			return "redirect:/TeamProject/Main.jsp";
		}
		session.setMaxInactiveInterval(0);
		System.out.println("failed");
		return "redirect:/TeamProject/login.jsp";
	}
	@RequestMapping(value = "ownerRegister.do")
	public String JoinOwner(OwnerBean ownerBean) {
		System.out.println("onwnerjoinbean"+ownerBean);
		
		ownerDao.joinOwner(ownerBean);
		ownerDao.cateOwner(ownerBean);
		return "redirect:TeamProject/login.jsp";
	}
	@RequestMapping(value = "couponinsert.do")
	public String couponInsert(@RequestParam(value = "ownerid")String ownerid,CouponBean couponBean) {
		couponBean.setOwnerno(ownerDao.selectno(ownerid));
		ownerDao.insertCoupon(couponBean);
		return "TeamProject/coupon";
	}
	
	@RequestMapping(value="storeinfo.do",method=RequestMethod.POST)
	public String storeinfoProcess(StoreBean bean,@RequestParam(value="file",required=false)MultipartFile file,Model model){
		System.out.println("streinfoProcess");
		String locations = "C:\\Users\\dlqhd\\Desktop\\springDev\\springbegin\\springMyBatis\\SpringWeb\\src\\main\\webapp\\upload\\";
		FileOutputStream fos = null;
		//System.out.println("storeinfo1"+bean);
		String fileName =file.getOriginalFilename();
		System.out.println(file);
		System.out.println(file.getOriginalFilename());
		if (fileName.length() > 0) {
			try {
				fos=new FileOutputStream(locations+fileName);
				fos.write(file.getBytes());
                bean.setStoreimg(file.getOriginalFilename());
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				try {
					fos.close();					
				} catch (Exception e2) {
					// TODO: handle exception
					e2.printStackTrace();
				}
			}
		}
		System.out.println("storeinfo"+bean);
		if(ownerDao.selectCheckStore(bean.getOwnerno())){
			System.out.println("true");
			ownerDao.storeAddProcess(bean);
			
		}else{
			System.out.println("false");
			ownerDao.storeModifyProcess(bean);
			//ownerDao.storeUpdateOwner(bean);
		}
		System.out.println(ownerDao.selectinfoStore(bean.getOwnerno()));
		model.addAttribute("store",ownerDao.selectinfoStore(bean.getOwnerno()));
//		ownerDao.updateProduct(bean);
	//return "redirect:/TeamProject/menuManager.jsp";
		return "TeamProject/storeManagement";
	}
	@RequestMapping(value = "infomodify.do",method=RequestMethod.POST)
	public String infomodifyProcess(OwnerBean bean) {
		System.out.println(bean);
		ownerDao.updateOwner(bean);
		return "redirect:/TeamProject/masterInfo.jsp";
	}
	@RequestMapping(value = "storeManagement.do")
	public String storeManagementProcess(Model model,int ownerno) {
		System.out.println(ownerDao.selectinfoStore(ownerno));
		model.addAttribute("store",ownerDao.selectinfoStore(ownerno));
		return "TeamProject/storeManagement";
	}
	
	//conpon controller �κ�
	
		@RequestMapping(value = "couponinsert.do",method={RequestMethod.POST,RequestMethod.GET})
		public String couponInsert(@RequestParam(value = "ownerno")int ownerno,CouponBean couponBean,String conpondiscount,String couponstrat,Model model,HttpServletRequest request) {
			//couponBean.setOwnerno(ownerDao.selectno(ownerno));
			System.out.println(ownerno);
			System.out.println(conpondiscount);
			System.out.println(couponBean);
			conpondiscount=conpondiscount.replace("모든 음식 ", "").replace("% 할인", "");
			couponBean.setCoupondiscount(Integer.parseInt(conpondiscount));
			/*	couponstrat=couponstrat.replace("��", "");
			couponBean.setCouponstrat(couponstrat);*/
			ownerDao.insertCoupon(couponBean);
			HashMap<String, Object>map=new HashMap<String, Object>();
			model.addAttribute("couponList",pagin.pagingAction(model, map, request, ownerno));
			System.out.println(pagin.pagingAction(model, map, request, ownerno));
			return "TeamProject/couponListAjax";
		}
		@RequestMapping(value="couponSelect.do",method={RequestMethod.POST,RequestMethod.GET})
		public String couponSelect(@RequestParam(value="ownerno")int ownerno,Model model,@RequestParam(value="query",required=false)String query,String inputdata,HttpServletRequest request
				,@RequestParam(value="page",required=false,defaultValue="1")String page){
			System.out.println(inputdata);
			request.setAttribute("page", page);
			HashMap<String, Object>map=new HashMap<String, Object>();
			map.put("query", query);
			map.put("inputdata", inputdata);
			List<CouponBean> list=pagin.pagingAction(model, map, request,ownerno);
			model.addAttribute("couponList",list);
			model.addAttribute("ppage", request.getAttribute("ppage"));
			return "TeamProject/couponListAjax";
		}
		
		@RequestMapping(value="coupondelete.do",method={RequestMethod.POST,RequestMethod.GET})
		public String couponDelete(@RequestParam(value="ownerno",required=false,defaultValue="0")int ownerno,@RequestParam(value="couponno",required=false)int couponno,Model model,HttpServletRequest request){
			System.out.println("tt");
			System.out.println(couponno);
			ownerDao.couponDelete(couponno);
			if(ownerno!=0){
				HashMap<String, Object>map=new HashMap<String, Object>();
				model.addAttribute("couponList",pagin.pagingAction(model, map, request,ownerno));
			}
			return "TeamProject/couponListAjax";
			
		}
		
		// review 시작부분

	@RequestMapping(value="reviewInsert.do",method={RequestMethod.POST,RequestMethod.GET})
	public String reviewInsert(ReviewBean bean,Model model,@RequestParam(value="reviewno")int reviewno,HttpServletRequest request){
		System.out.println(bean);
		ownerDao.insertReview(bean);
		HashMap<String,Object> map=new HashMap<String, Object>();
		model.addAttribute("reviewlist",pagin1.pagingAction(model, map, request, reviewno));
		return "TeamProject/reviewListAjax";
	}
	@RequestMapping(value="reviewSelect.do",method={RequestMethod.POST,RequestMethod.GET})
	public String reviSewSelect(@RequestParam(value="reviewno")int reviewno,Model model,HttpServletRequest request,
			@RequestParam(value="page",required=false,defaultValue="1")String page){
		request.setAttribute("page",page);
		HashMap<String,Object>map = new HashMap<String, Object>();
		List<ReviewBean> list=pagin1.pagingAction(model, map, request, reviewno);
		System.out.println(map);
		model.addAttribute("reviewlist",list);
		model.addAttribute("ppage1",request.getAttribute("ppage1"));
		return "TeamProject/reviewListAjax";
		}
	@RequestMapping(value="reviewdelete.do",method={RequestMethod.POST,RequestMethod.GET})
	public String reviewDelete(@RequestParam(value="reviewno",required=false,defaultValue="0")int reviewno,Model model,HttpServletRequest request ){
		System.out.println(reviewno);
		ownerDao.reviewDelete(reviewno);
		if(reviewno!=0){
			HashMap<String,Object>map=new HashMap<String, Object>();
			model.addAttribute("reviewlist",pagin1.pagingAction(model, map, request, reviewno));
		}
		return "TeamProject/reviewListAjax";
		}
	
	
	//order 시작부분
	@RequestMapping(value="replacetext.do",method={RequestMethod.POST,RequestMethod.GET})
	public String replaceText(@RequestParam(value="userno",required=false)int userno,@RequestParam(value="btn",required=false)String btn,@RequestParam(value="orderno",required=false)int orderno,Model model){
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("btn",btn);
		map.put("orderno",orderno);
		ownerDao.updateOrder(map);
		List<orderBean> list = ownerDao.orderSelect(userno);
		model.addAttribute("orderlist",list);
		return "TeamProject/orderListAjax";
	}
	@RequestMapping(value="orderSelect.do",method={RequestMethod.POST,RequestMethod.GET})
	public String orderSelect(@RequestParam(value="userno",required=false)int userno,Model model){
		List<orderBean> list = ownerDao.orderSelect(userno);
		model.addAttribute("orderlist",list);
		return "TeamProject/orderListAjax";
	}
	@RequestMapping(value="showorderinfo.do")
	public String showOrderInfo(){
		System.out.println("tt");
		return "";
	}
}
