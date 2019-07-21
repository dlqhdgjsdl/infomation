package sist.com.web;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.data.repository.query.ReturnedType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;//web은 무조건 servlet

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
		//required가 false이면 파라미터값이 들어와도 되고 안들어안도 된다.반대로 true일때는 반드시 파라미터값이 들어와야된다.그러나 기본값을 설정해주면 true일때에도 값을 볼수가 있따.
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
		return "redirect:mvcSpring/basic/memberView.jsp";//리퀘스트매핑을 통해 리턴값도 url 값을 입력받아서 넘어갈수 있다. redirect는 application-context.xml 안통해서 바로 직접 보내버린다.
	}
	@RequestMapping(value="/mvcSpring/basic/member1.do")
	public String memberView1(){
		return "/mvcSpring/basic/memberView";//view resolver를 타서 움직인다(application-context.xml(view resolver)를 무조건 거쳐서 이동)
	}

}
