package sist.com.model;

/*restcontrollerEx¿¡¼­ »ç¿ëµÊ*/
public class ParamBean {
	private String pk;
	private String data;
	private int count;
	public String getPk() {
		return pk;
	}
	public void setPk(String pk) {
		this.pk = pk;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public ParamBean(String pk, String data, int count) {
		super();
		this.pk = pk;
		this.data = data;
		this.count = count;
	}
	public ParamBean() {
		super();
	}
	
}
