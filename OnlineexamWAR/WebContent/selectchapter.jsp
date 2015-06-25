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
	<td height="60" colspan="3" class="logo" nowrap="nowrap">PARIKSHA.COM<span class="tagline">| Examinations At your Door </span></td>
	<td width="40">&nbsp;</td>
	<td width="100%">&nbsp;</td>
	</tr>

	<tr bgcolor="#003399">
	<td width="15" nowrap="nowrap">&nbsp;</td>
	<td height="36" colspan="3" id="navigation" nowrap="nowrap" class="navText">





&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="news.jsp">NEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ChangeuserpassServlet">CHANGE YOUR PASSWORD </a>&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp; <a href="reviews.jsp">REVIEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="contest.jsp">TODAY'S CONTEST </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="contact.jsp">CONTACT US</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="LogoutServlet">LOGOUT</a></td>
	  <td width="40">&nbsp;</td>
	<td width="100%">&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#ffffff">
	<td width="230" colspan="2" valign="top" bgcolor="#ffffcc"><img src="mm_restaurant_image.jpg" alt="Home Page Image" width="230" height="270" border="0" />
	<table border="0" cellspacing="0" cellpadding="0" width="230">
		<tr>
		<td width="15">&nbsp;</td>
		<td width="200" class="smallText" id="padding"><br />		</td>
		<td width="15">&nbsp;</td>
		</tr>
	</table>	</td>
	<td width="50" valign="top"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
	<td width="440" valign="top"><p>&nbsp;</p>
	  <p align="center"><br />
	 	  
	  <%User u=(User)request.getAttribute("NAME"); 
	  
	  %>
	  <h3><b ><div align="center"> WELCOME MR <%=u.getFirstname().toUpperCase() %>&nbsp;&nbsp;<%=u.getLastname().toUpperCase() %></b></h3></div>
	    &nbsp;<br />
      </p>
	  <table border="0" cellspacing="0" cellpadding="0" width="440">
		<tr>
		<td class="pageHeader"><p align="center"><strong>TAKE THE TEST NOW !! </strong></p>
		  <p>&nbsp;</p></td>
		</tr>

		<tr>
		<td class="bodyText"><form id="form1" name="form1" method="post" action="GetchapterServlet">
		  <label>
		  <div align="center"><span class="pageName style1"><strong>SELECT SUBJECT
		        <select name="chaptername">
		        <%
  
    
    ChapterDAO dao=new ChapterDAO();
    Collection<Chapter> al=(Collection<Chapter>)request.getAttribute("SELECT");
    for(Chapter e: al)
    {
%>
<option><%=e.getChaptername() %></option>
<%} %>
	            </select>
		        <br />  
		        <br />
		      SELECT TYPE
		      <select name="type">
		        <option>EASY</option>
		        <option>HARD</option>
		        </select>
		        
		      <br />
		      <br />
		      <input type="submit" name="Submit" value="START TEST" />
		  </strong></span><br />
		  </div>
		  </label>
		  </form>
		  <p align="center">&nbsp;</p>

		<br />		</td>
		</tr>
	</table>	</td>
	<td width="40">&nbsp;</td>
	<td width="100%">&nbsp;</td>
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
	<td width="440">&nbsp;</td>
	<td width="40">&nbsp;</td>
	<td width="100%">&nbsp;</td>
	</tr>
</table>
</body>
</html>
