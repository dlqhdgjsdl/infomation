package sist.com.web;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.data.repository.query.ReturnedType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;//web�� ������ servlet

@Controller
public class BasicController {
	
	@RequestMapping(value="first.do")
	public ModelAndView firstView(){
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("msg","Hello Mvc Spring");
		modelAndView.setViewName("mvcSpring/basic/msgView");
		return modelAndView;
	}
	@RequestMapping(value="mvcSpring/basic/first.do")
	public ModelAndView fistView1(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("msg","tt");
		modelAndView.setViewName("mvcSpring/basic/msgView");
		return modelAndView;
	}
	@RequestMapping(value="second.do")
	public ModelAndView secondView(/*HttpServletRequest request,*/@RequestParam(value="no",required=false,defaultValue="0") int no){
		//required�� false�̸� �Ķ���Ͱ��� ���͵� �ǰ� �ȵ��ȵ� �ȴ�.�ݴ�� true�϶��� �ݵ�� �Ķ���Ͱ��� ���;ߵȴ�.�׷��� �⺻���� �������ָ� true�϶����� ���� ������ �ֵ�.
		/*int no =Integer.parseInt(request.getParameter("no"));*/
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("sMsg","hi");
		System.out.println("no="+no);
		modelAndView.setViewName("mvcSpring/basic/msgView2");
		/*if(no>5){
			modelAndView.setViewName("mvcSpring/basic/msgView2");
		}
		else{
			modelAndView.setViewName("mvcSpring/basic/msgView2-1");
		}*/
		return modelAndView;
	}
	@RequestMapping(value="member.do")
	public String memberView(){
		return "redirect:mvcSpring/basic/memberView.jsp";//������Ʈ������ ���� ���ϰ��� url ���� �Է¹޾Ƽ� �Ѿ�� �ִ�. redirect�� application-context.xml �����ؼ� �ٷ� ���� ����������.
	}
	@RequestMapping(value="/mvcSpring/basic/member1.do")
	public String memberView1(){
		return "/mvcSpring/basic/memberView";//view resolver�� Ÿ�� �����δ�(application-context.xml(view resolver)�� ������ ���ļ� �̵�)
	}

}
