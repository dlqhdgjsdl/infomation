package sist.com.app1.di;

/**
 * @author sist-216
 *
 */
public class Book {
	private String title;
	private String author;
	private int price;
	private String publisher;
	private String regdate;
	private String isbn;
	
	
	
	public void selectSecondBook(){
		System.out.println("selectSecondBook");
	}
	
	
	//생성되고 호출해지는 부분;
	public void selectBook(){
		System.out.println("selectBook");
	}
	
	
	public Book() {
		super();
	}
	public Book(String title, String author, int price, String publisher, String regdate, String isbn) {
		super();
		this.title = title;
		this.author = author;
		this.price = price;
		this.publisher = publisher;
		this.regdate = regdate;
		this.isbn = isbn;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}


	@Override
	public String toString() {
		return "Book [title=" + title + ", author=" + author + ", price=" + price + ", publisher=" + publisher
				+ ", regdate=" + regdate + ", isbn=" + isbn + "]";
	}
	
	
	
	
	
}
