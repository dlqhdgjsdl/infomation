package sist.com.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sist.com.dao.MyBatisDao;
import sist.com.model.EmpBean;
/*인터셉터 할때 사용*/
@Controller
public class SpringCoreMvcController {
	private final static Log log = LogFactory.getLog(SpringCoreMvcController.class);
	@Resource(name="myBatisDao")
	private MyBatisDao dao;
	
	
	@RequestMapping(value="headerRead.do")
	public String injecthead(@RequestHeader("Accept")String acceptType,Model model){
		model.addAttribute("acceptType",acceptType);
		return "springOption/viewResult1";
	}
	@RequestMapping(value="headerRead1.do")
	public String injecthead1(@RequestHeader("Accept")String acceptType,@RequestHeader("Host")String host,@RequestHeader(value="User-Agent",required=false,defaultValue="my")String userAgent,Model model){
		
		model.addAttribute("acceptType",acceptType);
		model.addAttribute("Host",host);
		model.addAttribute("userAgent",userAgent);
		return "springOption/viewResult1";
	}
	@RequestMapping(value="headerRead2.do")
	public String injecthead2(@RequestHeader Map<String,String>map,ModelMap model){
		System.out.println("map="+map);
		log.info("injectTestMap:"+map);
		model.addAttribute("map",map);
		return "springOption/viewResult1";
	}
	@RequestMapping(value="cookieTest1.do")
	public String cookieDemo1(@RequestParam(value="color",required=false,defaultValue="yellow")String color,HttpServletResponse response,Model model){
		Cookie cookie=null;
		cookie= new Cookie("color",color);
		cookie.setMaxAge(60);
		response.addCookie(cookie);
		model.addAttribute("color",color);
		return "springOption/cookieResult1";
	}
	@RequestMapping(value="cookieCheck.do")
	public String cookieCheck(@CookieValue(value="color",required=false,defaultValue="white")String cookie,Model model){
		
		model.addAttribute("color",cookie);		
		return "springOption/cookieColor";
	}
	@RequestMapping(value="cookielogin.do")
	public String cookieCreateProcess(@RequestParam(value="id",required=false,defaultValue="empty")String id,String ck,HttpServletResponse response){
		Cookie cookie=null;
		cookie=new Cookie("id", id);
		if(ck!=null){
			cookie.setMaxAge(60);
		}else{
			cookie.setMaxAge(0);
		}
		response.addCookie(cookie);
		return "springOption/cookieView";
	}
	@RequestMapping(value="loginCookieCheck.do")
	public String cookiePro(@CookieValue(value="id",required=false,defaultValue="empty")String cookie,Model model){
		model.addAttribute("id",cookie);	
		
		return "springOption/adminLogin";
		
	}
	@RequestMapping(value="ajaxEmpView.do")
	public String ajaxEmpProcess(Model model){
		List<EmpBean>list=dao.selectEmpProcess();
		JSONArray jsonArray=new JSONArray();
		for(int i=0;i<list.size();i++){
			EmpBean bean=list.get(i);
			JSONObject jsonObject=new JSONObject();
			jsonObject.put("empno", bean.getEmpno());
			jsonObject.put("ename", bean.getEname());
			jsonObject.put("sal", bean.getSal());
			jsonObject.put("job", bean.getJob());
			jsonObject.put("comm", bean.getComm());			
			jsonArray.add(jsonObject);
		}
		
		model.addAttribute("empjson", jsonArray);
		return "springMVCAjax/empView";
	}
	@RequestMapping(value="loginPro.do")
	public String loginActionProcess(String id,String pw){
		
		return "redirect:/intercepterList.do";
	}
	@RequestMapping(value="intercepterList.do")
	public String intercepterList(Model model){
		model.addAttribute("message","HellowMessage");
		return "mvcInterCepter/listView";
	}
	@RequestMapping(value="dbprocess.do")
	public String dbSelect(Model model){
		
		model.addAttribute("empList",dao.selectdbemp());
		return "springMVCAjax/chartDemo/jsonValue3";
	}
}