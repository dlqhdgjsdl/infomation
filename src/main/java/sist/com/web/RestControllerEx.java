package sist.com.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.springframework.lang.UsesSunHttpServer;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import sist.com.dao.ReplyDao;
import sist.com.model.CardBean;
import sist.com.model.ParamBean;
import sist.com.model.ReBean;
import sist.com.model.ReplyBean;

/*restEx랑 연결*/
@RestController
public class RestControllerEx {
	@Resource(name="replyDao")
	private ReplyDao rdao;
	@RequestMapping(value="StringParm.do")
	public String restProcess1(@RequestParam(value="subject",required=false,defaultValue="nl")String subject){
		if(subject.equals("java")){
		return "hello java";
		}else if(subject.equals("spring")){
			return "hello spring";
		}
	return "hello";	
	}
	@RequestMapping(value="ScriptParm.do")
	public String restProcess2(@RequestParam(value="kind",required=false,defaultValue="n1")String kind){
		if(kind.equals("h")){
			return "<h1>bb</h1>";
		}else if(kind.equals("i")){
			return "<img src='/web/img/3.jpg'></img>";
		}
		return "<script>alert('ScriptMessage')</script>";
	}
	@RequestMapping(value="locationParm.do")
	public String restProcess3(HttpServletResponse response,@RequestParam(value="job",required=false,defaultValue="info")String job) throws IOException{
		if(job.equals("list")){
			response.sendRedirect("restEx/restView.jsp");
		}
		/*return "redirect:restEx/restView.jsp";//redirect를 사용하면 body 부분에 바로 뿌려지기 때문에 사용하지 못한거 HttpServletResponse를 통해 사용하면 return에 없이  body부분에 뿌려지게된다. 따라서 HttpServletResponse 를 통해 리턴되기 전에 뿌려준다.*/
		return "hello spring";
	}
	/*@RequestMapping(value="locationParm1.do")
	public String restProcess4(HttpServletResponse response,@RequestParam(value="location",required=false,defaultValue="no")String location,HttpSession session) throws IOException{
		if(location.equals("t1")){
			session.setAttribute("test", "hi");
			response.sendRedirect("restEx/restView1.jsp");
		}
		return "no data";
	}*/
	@RequestMapping(value="ObjectParm.do")
	public ParamBean getParamBean(){
		ParamBean bean = new ParamBean("blue","java",10);
	return bean;
	}
	
	@RequestMapping(value="listParm.do")
	public List<ReBean> listProcess(){
		
		return rdao.selectre();
		
	}
	@RequestMapping(value="MapParm.do")
	public Map<String,ParamBean> getMapParm(){
		Map<String,ParamBean>map=new HashMap<String, ParamBean>();
		map.put("one",new ParamBean("blue","oracle",50));
		map.put("two",new ParamBean("blue1","oracle1",60));
		map.put("three",new ParamBean("blue2","oracle2",70));
		
		return map;
	}
	@RequestMapping(value="MapParm1.do")
	public Map<String,List<ReBean>> getMapParm1(){
		Map<String,List<ReBean>> map = new HashMap<String,List<ReBean>>();
		map.put("list",rdao.selectre());
		return map;
		
	}
	/*@RequestMapping(value="Map1Parm.do")
	public Map<String,Object> mapProcess(){
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("t1","hi");
		map.put("t2","bong");
		map.put("t3","heon");
		return map;
	}*/
}