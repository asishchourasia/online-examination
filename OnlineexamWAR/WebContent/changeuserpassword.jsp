<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="org.servlet.*,java.util.*,org.dao.*,java.sql.*,org.dao.setquestions.*,org.dao.chapter.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<script type="text/javascript">
function validation()
{
	if(document.getElementById("name").value=='')
	{
		alert("please enter username");
		document.getElementById("name").focus();
		return false;
	}
	else if(document.getElementById("oldpassword").value=='')
	{
		alert("please enter old password");
		document.getElementById("oldpassword").focus();
				return false;
	}
	else if(document.getElementById("newpassword").value=='')
	{
		alert("please enter new password");
		document.getElementById("newpassword").focus();
				return false;
	}
	
}
</script>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>PARIKSHA - Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
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
	PARIKSHA.COM <span class="tagline">|PARIKSHA.COM</span></td>
	<td width="40">&nbsp;</td>
	<td width="100%">&nbsp;</td>
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
	
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="news.jsp">NEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ChangeuserpassServlet">CHANGE YOUR PASSWORD</a>&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp; <a href="reviews.jsp">REVIEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="contest.jsp">TODAY'S CONTEST</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="contact.jsp">CONTACT US</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
		<td width="200" class="smallText" id="padding">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam. <br />
		&nbsp;<br />		</td>
		<td width="15">&nbsp;</td>
		</tr>
	</table>	</td>
	<td width="50" valign="top"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
	<td width="440" valign="top"><br />
	&nbsp;<br />
	<table border="0" cellspacing="0" cellpadding="0" width="440">
		<tr>
		<td class="pageHeader">CHANGE YOUR PASSWORD </td>
		</tr>

		<tr>
		<td class="bodyText"><p>&nbsp;</p>		  <div align="center"><br />
		
		      
		    <form id="form1" name="form1" method="post"  onsubmit=" return validation()" action="ChangeuserpasswordServlet">
		      <label><strong>ENTER YOUR USERNAME
		      <input type="text" name="username" ID="name" />
		      </strong></label><br>
              
		      <label><strong>ENTER OLD PASSWORD
		      <input type="text" name="oldpassword" id="oldpassword" />
		      </strong></label>
                        <p><strong>
                        <label>ENTER NEW PASSWORD
                        <input type="text" name="newpassword" id="newpassword" />
                        </label>
                        </strong></p>
                        <p>&nbsp;</p>
                        <p>
                          <label>
                          <input type="submit" name="Submit" value="Submit" />
                          </label>
</p>
		    </form>
		    </div></td>
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
