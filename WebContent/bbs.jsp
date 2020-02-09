 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content = "text/html; charset=UTF-8">
<meta name = "viewport" content ="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP Board</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
		}
	%>

	<nav class ="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class = "navbar-toggle collapsed" 
			data-toggle = "collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded ="false">
				<span class ="icon-bar"></span>
				<span class ="icon-bar"></span>
				<span class ="icon-bar"></span> 
			</button>
			<a class="navbar-brand" href="main.jsp">JSP Board</a>
		</div>
		
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">MAIN</a></li>
				<li class ="active"><a href="bbs.jsp">BOARD</a></li>
			</ul> 
			
			
		<%
			if (userID == null){ // if user haven't logged in yet
		%>
			<ul class="nav navbar-nav navbar-right">
				<li class ="dropdown">
					<a href="#" class="dropdown-toggle" 
					data-toggle="dropdown" role= "button" aria-haspopup="true"
					aria-expanded="false">CONNECT<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li ><a href="login.jsp">LOGIN</a></li>
						<li><a href="join.jsp">SIGN IN</a></li>
					</ul>
				</li>
		</ul>
		<%
			} else {
		%>
			<ul class="nav navbar-nav navbar-right">
				<li class ="dropdown">
					<a href="#" class="dropdown-toggle" 
					data-toggle="dropdown" role= "button" aria-haspopup="true"
					aria-expanded="false">MANAGE USER<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li ><a href="logoutAction.jsp">LOGOUT</a></li>
					</ul>
				</li>
		</ul>
		<% 
			}		
		%>
		
	</div>
</nav>
 <div class ="container">
 	<div class ="row">
 		<table class ="table table-striped" style ="text-align: center; border: 1px solid #dddddd">
 			<thead>
 				<tr>
 					<th style ="background-color:#eeeeee; text-align: center;">No.</th>
 					<th style ="background-color:#eeeeee; text-align: center;">Title</th>
 					<th style ="background-color:#eeeeee; text-align: center;">User</th>
 					<th style ="background-color:#eeeeee; text-align: center;">Date</th>
 				</tr>
 			</thead>
 			
 			<tbody>
 				<tr>
 					<td>1</td>
 					<td>2</td>
 					<td>3</td>
 					<td>4</td>
 				</tr>
 			</tbody>
  		</table>
 		<a href ="write.jsp" class = "btn btn-primary pull-right"> Write</a>
 	</div>
 
 </div>

<script src = "https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src = "js/bootstrap.js"></script>

</body>
</html>