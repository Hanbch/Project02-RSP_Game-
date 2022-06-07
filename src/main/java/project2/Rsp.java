package project2;

class Rsp{
	String user,com;
	
	Rsp(String user,String com){
		this.user = user;
		this.com = com;
	}
	
	public String run(){
		
		if(user.equals(com))
			return "DRAW";
		
		if(user.equals("rock") && com.equals("ceaser")) 
			return "WIN";
		else if(user.equals("rock") && com.equals("paper"))
			return "LOSE";
		else if(user.equals("ceaser") && com.equals("rock"))
			return "LOSE";
		else if(user.equals("ceaser") && com.equals("paper"))
			return "WIN";
		else if(user.equals("paper") && com.equals("rock"))
			return "WIN";
		else 
			return "LOSE";
		
	}
}
