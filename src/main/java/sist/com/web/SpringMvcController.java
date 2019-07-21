package sist.com.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.mongodb.util.JSON;

import sist.com.dao.CardDao;
import sist.com.dao.MyBatisDao;
import sist.com.dao.empBean;
import sist.com.model.AjaxBean;
import sist.com.model.CardBean;
import sist.com.model.EmpBean;
import sist.com.model.UserException;

@RestController
public class SpringMvcController {
	@Resource(name="cardDao")
	private CardDao dao;
	
	@RequestMapping(value="springMvc1.do",produces="application/text;charset=utf-8")//한글이 안깨지도록 해줌 
	public String springLocation(@RequestParam(value="msg",required=false,defaultValue="si")String msg){
		if(msg.equals("si")){
			return "봉봉hi";
		}else{
			return "봉봉bye";
		}
	}
	@RequestMapping(value="springMvc2.do")
	public CardBean springLocation1(){
		return new CardBean(1,"봉봉주식회사","봉봉","010-4447-4447");
		
	}
	@RequestMapping(value="springMvc3.do")
	public Map<String,Object> springLocation2(){
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("empno",7788);
		map.put("ename","bong");
		map.put("sal",8000);
		map.put("job","student");
		return map;
		
	}
	
	@RequestMapping(value="springMvc4.do")
	public List<CardBean> springLocation3(){
		 
		return dao.selectcardbean();
	}
	/*@RequestMapping(value="ajaxMvc.do",method=RequestMethod.POST)
	public List<AjaxBean> ajaxProcess(@ModelAttribute AjaxBean bean,BindingResult result,ModelMap model){
		
		if(!result.hasErrors()){
			System.out.println(bean);
			dao.ajaxInsert(bean);			
		}
		System.out.println(dao.selectajaxbean());
		return dao.selectajaxbean();
	}*/
	@RequestMapping(value="nullException.do")
	public String nullProcess(EmpBean bean){
		bean =null;
		bean.setEname("bong");
		System.out.println(bean);
		return "springOption/exceptionView1"; 
	}
/*	@ExceptionHandler(NullPointerException.class)
	public ModelAndView commandEx1(NullPointerException e){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("springOption/exceptionView1");
		mv.addObject("exception",e);
		return mv;
	}*/
	@RequestMapping(value="castException.do")
	public String castProcess(){
		String str= (String)new Object();
		return "springOption/exceptionView1";
	}
	//@ExceptionHandler(Exception.class) 를 컨트롤러 내부에 선언함으로서 해당 컨트롤러의 익셉션을 캐치하고 원하는대로 처리할 수 있다.
/*	@ExceptionHandler(ClassCastException.class)
	public ModelAndView commandEx2(ClassCastException e){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("springOption/exceptionView1");
		mv.addObject("exception1",e);
		return mv;
	}*/
	@RequestMapping(value="userException.do")
	public String userProcess(int port){
		if(port>3000){
			throw new UserException();
			
		}
		return "springOption/exceptionView1";
	}
	
}
