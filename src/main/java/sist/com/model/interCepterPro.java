package sist.com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class interCepterPro extends HandlerInterceptorAdapter {/*servelt 으로 해야한다*/


	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("afterCompletion");
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("pstHandle");
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		if(!(id.equals("Admin")&& pw.equals("1234"))){
			response.sendRedirect("mvcInterCepter/adminLogin.jsp");
			return false;
		}
		
		return true;
		
	} 
}
