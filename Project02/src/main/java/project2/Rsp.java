package project2;

public class Rsp{
	public String user,com;
	
	public Rsp(String user,String com){
		this.user = user;
		this.com = com;
	}
	
	public String run(){
		
		if(user.equals(com))
			return "DRAW";
		
		if(user.equals("rock") && com.equals("scissor")) 
			return "WIN";
		else if(user.equals("rock") && com.equals("paper"))
			return "LOSE";
		else if(user.equals("scissor") && com.equals("rock"))
			return "LOSE";
		else if(user.equals("scissor") && com.equals("paper"))
			return "WIN";
		else if(user.equals("paper") && com.equals("rock"))
			return "WIN";
		else 
			return "LOSE";
		
	}
}
