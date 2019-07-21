package sist.com.app3.di;

import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;



public class Store {
	/*@Resource(name="map1")*/
	private Map<Integer, Computer> map;//키값을 Integer으로 바꿔주면 값이 들어갔다.(선생님이 해주는것은 integer로 하는방법)
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
