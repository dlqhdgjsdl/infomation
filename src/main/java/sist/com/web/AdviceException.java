package sist.com.web;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class AdviceException {
	
	@ExceptionHandler(Exception.class)
	public ModelAndView commandException(Exception e){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("springOption/adviceException");
		modelAndView.addObject("exception",e);
		return modelAndView;
		
		
	}
}
