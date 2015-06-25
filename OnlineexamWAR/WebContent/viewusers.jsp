<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.servlet.*,java.util.*,org.dao.*,java.sql.*,org.dao.setquestions.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>View Users</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_spa.css" type="text/css" />
</head>
<body bgcolor="#990000" background="mm_bg_red.gif">

<%
//allow access only if session exists
String admin = null;
if(session.getAttribute("admin")== null){
    response.sendRedirect("homepage.jsp");
}
else admin = (String) session.getAttribute("admin");
String adminName = null;
String sessionID = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
    if(cookie.getName().equals("admin")) adminName = cookie.getValue();
    if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
}
}
%>
<table width="1355" border="0" cellpadding="0" cellspacing="0">
  <tr bgcolor="#220103">
    <td colspan="2" rowspan="2" nowrap="nowrap"><img src="mm_spa_photo1.jpg" alt="Header image" width="215" height="109" border="0" /></td>
    <td width="792" height="57" nowrap="nowrap" id="logo" valign="bottom"><div align="center">PARIKSHA.COM</div></td>
    <td width="101" rowspan="2">&nbsp;</td>
    <td width="4" rowspan="2">&nbsp;</td>
  </tr>
  <tr bgcolor="#220103">
    <td height="54" nowrap="nowrap" id="tagline" valign="top"><div align="center">Bringing Examinations At Your Doorsteps </div></td>
  </tr>
  <tr bgcolor="#FF9900">
    <td colspan="5"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>
  <tr bgcolor="#FF080E">
    <td colspan="5"><img src="mm_spacer.gif" alt="" width="1" height="2" border="0" /></td>
  </tr>
  <tr bgcolor="#FF9900">
    <td colspan="5"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>
  <tr bgcolor="#FF080E">
    <td>&nbsp;</td>
    <td colspan="4" height="18" id="dateformat">|| <a href="ChaptermanagementServlet">BACK</a> ||</td>
  </tr>
  <tr bgcolor="#FF9900">
    <td colspan="5"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>
  <tr bgcolor="#FF080E">
    <td colspan="5"><img src="mm_spacer.gif" alt="" width="1" height="2" border="0" /></td>
  </tr>
  <tr bgcolor="#FF9900">
    <td colspan="5"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>
  <tr>
    <td width="40">&nbsp;</td>
    <td valign="top" colspan="3">&nbsp;<br />
      &nbsp;<br />
      <table border="0" cellspacing="0" cellpadding="2" width="1059">
        <tr>
          <td class="pageName"><div align="center"> USER LIST </div></td>
        </tr>
        <tr>
          <td class="bodyText" width="995"><form id="form1" name="form1" method="post" action="">
            <table border='1'><caption>STUDENT DATABASE</caption>
          <tr>
            <th>USERID</th>
            <th>NAME</th>
            <th>EMAIL ID</th>
            <th>GENDER</th>
            <th>ADDRESS</th>
            <th>CITY</th>
            <th>STATE</th>
            <th>PIN</th>
            <th>INSTITUTE NAME</th>
            <th>DEGREE</th>
            <th>YEAR OF PASSING</th>
            <th>USERNAME</th>  
           <%

			 UserDAO dao=new UserDAO();
			 ArrayList<User> al=dao.display();
			
             for(User e: al)
        	 {
        	  %>
        	  <tr>
        	     <td><%=e.getUserid() %></td>
        	     <td><%=e.getFirstname() %>&nbsp;&nbsp;<%=e.getLastname() %></td>
        	     <td><%=e.getEmailid() %></td>
        	     <td><%=e.getGender() %></td>
        	     <td><%=e.getAddress() %></td>
        	     <td><%=e.getCity() %></td>
        	     <td><%=e.getState() %></td>
        	     <td><%=e.getPin() %></td>
        	     <td><%=e.getInsname() %></td>
        	     <td><%=e.getDegree() %></td>
        	     <td><%=e.getYop() %></td>
        	     <td><%=e.getUsername() %></td>
        	  </tr>
        	  <% } %>
        	  </tr>
        	  </table>
            
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          </form>
          <p>&nbsp;</p></td>
        </tr>
      </table></td>
    <td width="4">&nbsp;</td>
  </tr>
  <tr>
    <td width="40">&nbsp;</td>
    <td width="175">&nbsp;</td>
    <td width="792">&nbsp;</td>
    <td width="101">&nbsp;</td>
    <td width="4">&nbsp;</td>
  </tr>
</table>
</body>
</html>