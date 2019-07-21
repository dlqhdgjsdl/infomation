package sist.com.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import sist.com.dao.ReplyDao;
import sist.com.model.AjaxBean;
import sist.com.model.ParamBean;
import sist.com.model.ReBean;
import sist.com.model.ReplyBean;

@RestController
public class ReplyController {
	@Resource(name="replyDao")
	private ReplyDao rdao;
	
	@RequestMapping(value="insertReply.do")/*insertReply.do replyController 일때 필요*/
	public String insertReply(ReplyBean bean){
		
		rdao.insertReply(bean);
		System.out.println(bean);
		return "";
	}
	@RequestMapping(value="re.do")
	public List<ReBean> ReProcess(@ModelAttribute ReBean bean,BindingResult result,Model model){
		
		
		if(!result.hasErrors()){
			System.out.println(bean);
			rdao.reInsert(bean);
			System.out.println(rdao.reselect());
		}
		return rdao.reselect();
	}
	
	@RequestMapping(value="redelete.do")
	public List<ReBean> ReDelete(@RequestParam(value="no",required=false)int no){
		System.out.println(no);
		 rdao.ReDelete(no);
		 return rdao.reselect();
	}
	@RequestMapping(value="ReSelect.do")
	public List<ReBean> ReSelect(){
		return rdao.reselect();
		
	}
	@RequestMapping(value="ReUdate.do")
	public List<ReBean> ReUpdate(@RequestParam(value="no",required=false)int no,@RequestParam(value="contents",required=false)String contents){
		System.out.println(no);
		System.out.println(contents);
		
		rdao.ReUpdate(no, contents);
		return rdao.reselect();
		
	}
	
}
