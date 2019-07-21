package sist.com.app2.aop;

public class Marine implements Unit {
	private Command command;

	
	
	
	public Marine() {
		super();
	}




	public Marine(Command command) {
		super();
		this.command = command;
	}




	public Command getCommand() {
		return command;
	}




	public void setCommand(Command command) {
		this.command = command;
	}




	@Override
	public void doCommand() {
		// TODO Auto-generated method stub
		command.command();
	}
	
	
}
