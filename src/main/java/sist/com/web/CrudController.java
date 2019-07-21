package sist.com.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import sist.com.dao.MyBatisDao;
import sist.com.model.EmpBean;

@Controller
public class CrudController {
	@Resource(name="myBatisDao")
	private MyBatisDao dao;
	
	@RequestMapping(value="login.do")
	public String loginProcess(Model model,String id,String pw,HttpSession session){
		boolean state=dao.loginProcess(id, pw);
			model.addAttribute("state",state );
		if(state){
			session.setAttribute("id", id);
			session.setMaxInactiveInterval(60);
		}			
		return "springApp/loginList";
	}
/*	@RequestMapping(value="empList.do")
	public String empListgoodjob(Model model){
		model.addAttribute("state",dao.empList());
		return "springApp/empview";
		
	}*/
	
	@ModelAttribute(name="empList")
	public List<EmpBean> selectList(){
		return dao.selectEmpProcess();
		
	}
	@RequestMapping(value="empList.do")
	public String selectEmp(){
		return "springApp/empList";
	}
	@RequestMapping(value="java.do")
	public String selectJava(){
		return "springApp/IndexView";
	}
	
	@ModelAttribute(name="str")
	public List<String>selectString(){
		ArrayList<String>list=new ArrayList<String>();
		list.add("a");
		list.add("b");
		list.add("c");
		return list;
	}
	@RequestMapping(value="ajaxEmp.do")
	public String ajaxEmpJson(Model model){
		model.addAttribute("jsonEmp",dao.selectEmpProcess());
		return "jQuery/jQueryAjax/jsonEmpView";
	}
	
}
