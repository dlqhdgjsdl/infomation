package test;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class testController {
	@Autowired
	private testreplydao dao;
	
	@RequestMapping(value="tt.do")
	public String replyinsert(testreplybean bean){
		
		System.out.println(bean);
		dao.insertreply(bean);
		return "Test/testajax";
	}
	@RequestMapping(value="ttt.do")
	public String selectreply(testreplybean bean,Model model){
	
		System.out.println(bean);
		model.addAttribute("replylist",dao.selectreply());
		return "redirect:/Test/Testboard.jsp";
	}
}
