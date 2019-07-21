package sist.com.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CollectionController {
	@Resource(name="scottData")
	private ScottData dao;
	
	@RequestMapping(value="/collection.do")
	public ModelAndView searchEmp(@RequestParam(value="state",required=false,defaultValue="EMP")String state){
		String []strEmp={"NO","EMPNO","ENAME","SAL","COMM","JOB","HIREDATE"};
		String []strStudent={"NO","NAME","AGE","HOBBY","GRADE"};
		ModelAndView modelAndView=new ModelAndView();
		if(state.equals("EMP")){
			modelAndView.addObject("empList",dao.selectEmp());
			modelAndView.addObject("title",strEmp);
			modelAndView.addObject("state","EMP");
		}else{
			modelAndView.addObject("empList",dao.selectStudent());
			modelAndView.addObject("title", strStudent);
			modelAndView.addObject("state","STUD");
		}
		modelAndView.setViewName("mvcSpring/core/empView");
		return modelAndView;
	}	

	/*@RequestMapping(value="/studnet.do")
	public ModelAndView searchStudnet(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("studnetlist", dao.selectStudent());
		modelAndView.setViewName("mvcSpring/core/StudentView");
		return modelAndView;
	}*/
	@RequestMapping("jsonInfo.do")
	public String jsonView(Model model, int no){
		Object obj=dao.getInfo(no);
		model.addAttribute("info", obj);
		return "mvcSpring/core/jsonData";
	}
	@RequestMapping(value="memberInsert.do")
	public String getData(@ModelAttribute dataBean databean){
		System.out.println(databean);
		return "mvcSpring/core/viewform";
	}
}
