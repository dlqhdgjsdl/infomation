package sist.com.app1.di;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.web.bind.annotation.RequestMapping;


public class AppBook3 {
	
	//var s={"��":"function(){���Ͼ� ����..}","��":"function(){���ؾ� �� ���}","��":"function(){����� ����}"};
	private List<Book>list;//field
	
	public AppBook3() {
		super();
	}

	public AppBook3(List<Book> list) {
		super();
		this.list = list;
	}
   @RequestMapping
	public List<Book> getList() {
		return list;
	}
	@Required
	@Autowired
	public void setList(List<Book> list) {
		this.list = list;
	}
	
	
}
