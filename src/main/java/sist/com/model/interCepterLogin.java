package sist.com.model;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import sist.com.dao.interProcessDao;

public class interCepterLogin extends HandlerInterceptorAdapter {
	@Resource(name="interprocessdao")
	private interProcessDao pdao;
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id+"     "+pw);
		
		/*System.out.println(pdao.selectLogin());*/
		
		
		if(!(id.equals("bong")&& pw.equals("1234"))){
			response.sendRedirect("newapp/member/login.jsp");
			return false;
		}
		
		return true;
	
	}

	
}
