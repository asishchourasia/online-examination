<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="org.servlet.*,java.util.*,org.dao.*,java.sql.*,org.dao.setquestions.*,org.dao.chapter.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>PARIKSHA - Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
<style type="text/css">
<!--
.style1 {color: #000000}
.style2 {font-weight: bold}
-->
</style>
</head>
<body bgcolor="#0066cc">
<%
//allow access only if session exists
String user = null;
if(session.getAttribute("user")== null){
    response.sendRedirect("homepage.jsp");
}
else user = (String) session.getAttribute("user");
String userName = null;
String sessionID = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
    if(cookie.getName().equals("user")) userName = cookie.getValue();
    if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
}
}
%>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr bgcolor="#99ccff">
	<td width="15" nowrap="nowrap" ><img src="mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	<td height="60" colspan="3" class="logo" nowrap="nowrap"><br />
	PARIKSHA.COM <span class="tagline">| Bringing Examinations At your Doorsteps</span></td>
	<td width="5">&nbsp;</td>
	<td width="44">&nbsp;</td>
	</tr>

	<tr bgcolor="#003399">
	<td width="15" nowrap="nowrap">&nbsp;</td>
	<td height="36" colspan="3" id="navigation" nowrap="nowrap" class="navText">
	<%   UserDAO dao2=new UserDAO();
 	User u1=(User)dao2.getname(Integer.parseInt(userName));
 	%>
 	<form method="post" action="HomepageServlet">
 	<input type="hidden" name="username" value="<%=u1.getUsername()%>"></input>
 	<input type="hidden" name="password" value="<%=u1.getPassword() %>"></input>
 	
 	<input type="submit" value="USER HOME PAGE"></input>
 	</form>
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="news.jsp">NEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="adminlogin.jsp">MEMBER LOGIN </a>&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp; <a href="reviews.jsp">REVIEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="contest.jsp">TODAY'S CONTEST </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="contact.jsp">CONTACT US</a>&nbsp;&nbsp;
	  <td width="5">&nbsp;</td>
	<td width="44">&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="2" valign="top" bgcolor="#ffffcc"><img src="mm_restaurant_image.jpg" alt="Home Page Image" width="230" height="270" border="0" />
	<table border="0" cellspacing="0" cellpadding="0" width="230">
		<tr>
		<td width="15">&nbsp;</td>
		<td width="200" class="smallText" id="padding">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam. <br />
		&nbsp;<br />		</td>
		<td width="15">&nbsp;</td>
		</tr>
	</table>	</td>
	<td width="50" valign="top"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
	<td width="783" valign="top"><p>&nbsp;</p>
	  <p align="center"><br />
      </p>
	  <table border="0" cellspacing="0" cellpadding="0" width="781">
		<tr>
		<td width="674" class="pageHeader"><div align="center">TEST TIME !! </div></td>
		</tr>

		<tr>
		<td class="bodyText"><p>&nbsp;</p>

		<br />		</td>
		</tr>
	</table>	
	  <div align="center">
	   	   
	   
	    <form id="form1" name="form1" method="" action="GetresultServlet">
	    
	  
	    
	    <% 
ArrayList<Createquestions> al=(ArrayList<Createquestions>)request.getAttribute("QUES");
Collections.shuffle(al);
for(Createquestions e:al)
{
	
%>
	    
	    

	      <p align="left" class="subHeader style1"><B> <%=e.getQuestion() %> </p>
	      <p align="left" class="subHeader style1">&nbsp;</p>
	      <p>
	        <label>
	          <div align="left" class="style2">
	            1)
	            <input type="radio" name="<%=e.getQuestionno() %>" value="<%=e.getOption1() %>" />
	          <b><%=e.getOption1() %></b></div>
	        </label>
	        <div align="left"><strong><br />
            </strong></div>
	        <strong>
	        <label>	          </label>
	        </strong>
	        <label><div align="left"><strong>
	            2)
	            <input type="radio" name="<%=e.getQuestionno() %>" value="<%=e.getOption2() %>" />
	          <b><%=e.getOption2() %></strong></div>
	        </label>
	        <div align="left"><strong><br />
            </strong></div>
	        <strong>
	        <label>	          </label>
	        </strong>
	        <label><div align="left"><strong>3)
	            <input type="radio" name="<%=e.getQuestionno() %>" value="<%=e.getOption3() %>" />
	          <b><%=e.getOption3() %></strong></div>
	        </label>
	        <div align="left"><strong><br />
            </strong></div>
	        <strong>
	        <label>	          </label>
	        </strong>
	        <label><div align="left"><strong>4)
	            <input type="radio" name="<%=e.getQuestionno() %>" value="<%=e.getOption4() %>" />
	          <b><%=e.getOption4() %></strong></div>
	        </label>
	        <div align="left"><br />
              </div>
	      </p>

	    
<%} %>
	      
	      <p align="left" class="subHeader style1">
	        <input type="submit"  value="VIEW RESULT" />
	      </p>
	      <p align="left" class="subHeader style1">
	        <label></label>
</p></form>
	    
      </div></td>
	<td width="5">&nbsp;</td>
	<td width="44">&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr>
	<td colspan="6">&nbsp;</td>
	</tr>


	<tr bgcolor="#003399">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr>
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="2" border="0" /></td>
	</tr>

	<tr bgcolor="#003399">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>


	<tr>
	<td width="15">&nbsp;</td>
	<td width="215">&nbsp;</td>
	<td width="50">&nbsp;</td>
	<td width="783">&nbsp;</td>
	<td width="5">&nbsp;</td>
	<td width="44">&nbsp;</td>
	</tr>
</table>
</body>
</html>
