package test;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TestController1 {
	@Autowired
	private TestDao dao;
	
	@RequestMapping(value="insertwriter.do")
	public String insertWriter(TestBean bean){
		dao.insertWriter(bean);
		return "Test/Testboard";
	}
	@RequestMapping(value="showlist.do")
	public String showList(Model model,HttpSession session,@RequestParam(value="t2",required=false)String t2){
		/*session.setAttribute("listt2",dao.t2id(t2));*/
		model.addAttribute("list",dao.showlist());
		return "Test/Testboard"; 
	}
	@RequestMapping(value="showinfo.do")
	public String showInfo(Model model,@RequestParam(value="t4",required=false)String t4){
		
		System.out.println(t4);
		model.addAttribute("showInfo",dao.showInfo(t4));
		return "Test/Testinfo";
	}
}
