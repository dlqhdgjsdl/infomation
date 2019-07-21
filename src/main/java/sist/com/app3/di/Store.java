package sist.com.app3.di;

import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;



public class Store {
	/*@Resource(name="map1")*/
	private Map<Integer, Computer> map;//Ű���� Integer���� �ٲ��ָ� ���� ����.(�������� ���ִ°��� integer�� �ϴ¹��)
	private Properties properties;
	
	public Store() {
		super();
	}
	
	
	public Store(Map<Integer, Computer> map, Properties properties) {
		super();
		this.map = map;
		this.properties = properties;
	}

	
	public Map<Integer, Computer> getMap() {
		return map;
	}
	@Required
	@Autowired
	public void setMap(Map<Integer, Computer> map) {
		this.map = map;
	}
	public Properties getProperties() {
		return properties;
	}
	public void setProperties(Properties properties) {
		this.properties = properties;
	}
	@Override
	public String toString() {
		return "Store [map=" + map + ", properties=" + properties + "]";
	}
	
	
}
