package sist.com.app7.di;


public class JspApp {
	
	private String scriptlet;
	private String primitiveObject;
	private String servlet;
	private String actionTag;
	
	
	
	
	public JspApp() {
		super();
	}
	
	public JspApp(String scriptlet, String primitiveObject, String servlet, String actionTag) {
		super();
		this.scriptlet = scriptlet;
		this.primitiveObject = primitiveObject;
		this.servlet = servlet;
		this.actionTag = actionTag;
	}
	
	public String getScriptlet() {
		return scriptlet;
	}
	public void setScriptlet(String scriptlet) {
		this.scriptlet = scriptlet;
	}
	public String getPrimitiveObject() {
		return primitiveObject;
	}
	public void setPrimitiveObject(String primitiveObject) {
		this.primitiveObject = primitiveObject;
	}
	public String getServlet() {
		return servlet;
	}
	public void setServlet(String servlet) {
		this.servlet = servlet;
	}
	public String getActionTag() {
		return actionTag;
	}
	public void setActionTag(String actionTag) {
		this.actionTag = actionTag;
	}
	
	@Override
	public String toString() {
		return "JspApp [scriptlet=" + scriptlet + ", primitiveObject=" + primitiveObject + ", servlet=" + servlet
				+ ", actionTag=" + actionTag + "]";
	}
	
	
}
