package sist.com.app7.di;

import javax.annotation.Resource;
import javax.inject.Inject;

public class WebContainer {
	//@Inject 하나일때는 상관없는데 두개 일때는 사용하기 힘들수 있다.
	//@Resource(name="jspBean2")
	private JspApp jsp;

	public WebContainer() {
		super();
	}


	public WebContainer(JspApp jsp) {
		super();
		this.jsp = jsp;
	}

	
	public JspApp getJsp() {
		return jsp;
	}
	
	
	
	
	public void setJsp(JspApp jsp) {
		this.jsp = jsp;
	}



	@Override
	public String toString() {
		return "WebContainer [jsp=" + jsp + "]";
	}
	
	
	
	
}
