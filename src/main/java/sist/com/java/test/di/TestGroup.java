package sist.com.java.test.di;

public class TestGroup {
	private TestCar tc;

	public TestGroup() {
		super();
	}

	public TestGroup(TestCar tc) {
		super();
		this.tc = tc;
	}

	public TestCar getTc() {
		return tc;
	}

	public void setTc(TestCar tc) {
		this.tc = tc;
	}

	@Override
	public String toString() {
		return "TestGroup [tc=" + tc + "]";
	}
	
}
