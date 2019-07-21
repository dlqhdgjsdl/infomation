package sist.com.app1.di;

import javax.annotation.Resource;

public class AppBook2 {
	@Resource(name="book1")
	private Book book;

	
	
	public Book getBook() {
		return book;
	}
	@Resource(name="book2")
	public void setBook(Book book) {
		this.book = book;
	}
	
	
	
}
