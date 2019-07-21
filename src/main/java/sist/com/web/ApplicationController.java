package sist.com.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ApplicationController {
	
	@RequestMapping("jQuery/jQueryAjax/cnn.do")
	public String getCNNNews(Model model,@RequestParam(value="msg",required=false,defaultValue="gh")String msg ){
		if(msg.equals("hi")){
		model.addAttribute("cnn", "Have your ever hard about 이규환");
		}else if(msg.equals("hello")){
			model.addAttribute("cnn", "Have your ever hard about 박진하");
		}
		else if(msg.equals("img")){
			model.addAttribute("cnn", "<img src='/web/img/4.jpg'>");
		}
		return "jQuery/jQueryAjax/cnnView";
	}
	 @RequestMapping("jQuery/jQueryAjax/script.do")
	 public String script(String msg){
		 System.out.println(msg);
		 if(msg.equals("alert")){
			 return "redirect:alertProcess.js";
		 }
		 return "redirect:data.js";
	}
	 @RequestMapping(value="jQuery/jQueryAjax/jsonView.do")
	 public void jsonViewProcess(String msg){//void일때는 dispatcher로 간다.
		 System.out.println(msg);
	 }
}






