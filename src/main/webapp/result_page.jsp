<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page errorPage="erroPage.jsp"  %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>RockscissorPaper Project</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
	String[] rsp = {"rock","scissor","paper"};
	int rn = (int)(Math.random()*3);
	String com = rsp[rn];
	String user = rsp[Integer.parseInt( request.getParameter("rsp") )];
	
	class Rsp{
		String user,com;
		
		Rsp(String user,String com){
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
	
	Rsp g1 = new Rsp(user,com);
	String result = g1.run();
%>
    <div class="wrapper">
        <div class="wrapper_inner">
            <div class="show_result">
                <div class="left">
                    <div class="tit">You</div>
                    <img src="img/<%= user %>_icon.png" alt="<%= user %>_img">
                    <p><%= user %> </p>
                </div>
                <div class="vs result_page">vs</div>
                <div class="right">
                    <div class="tit">Computer</div>
                    <img src="img/<%= com %>_icon.png" alt="<%= com %>_img">
                    <p><%= com %></p>
                </div>
                <div class="result"><%= result %></div>
            </div>
            
            <a href="index.jsp" class="back"><img src="img/reset_icon.png">다시하기</a>
            
        </div>

    </div>
</body>
</html>