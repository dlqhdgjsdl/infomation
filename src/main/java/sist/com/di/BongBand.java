package sist.com.di;

import java.util.List;
import java.util.Map;
import java.util.Set;

public class BongBand {
	private List<Member>list;
	private Set<Member> set;
	private Map<Integer,Member> map;
	
	

	public Map<Integer, Member> getMap() {
		return map;
	}

	public void setMap(Map<Integer, Member> map) {
		this.map = map;
	}

	public Set<Member> getSet() {
		return set;
	}

	public void setSet(Set<Member> set) {
		this.set = set;
	}

	public List<Member> getList() {
		return list;
	}

	public void setList(List<Member> list) {
		this.list = list;
	}

	
	
	@Override
	public String toString() {
		return "BongBand [list=" + list + "]";
	}
	
	
	
	
}
