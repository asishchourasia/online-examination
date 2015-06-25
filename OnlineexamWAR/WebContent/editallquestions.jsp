<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.dao.*,org.dao.setquestions.*,org.dao.admin.*,org.dao.*,org.dao.chapter.*,java.util.*,java.sql.*,org.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>EDIT QUESTIONS</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_spa.css" type="text/css" />
<style type="text/css">
<!--
.style2 {font-weight: bold}
.style3 {font-size: 16px; font-weight: bold; }
-->
</style>
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
<table width="1129" border="0" cellpadding="0" cellspacing="0">
  <tr bgcolor="#220103">
   <td rowspan="2" colspan="2" nowrap="nowrap"><img src="mm_spa_photo1.jpg" alt="Header image" width="215" height="109" border="0" /></td>
   <td colspan="2" height="55" nowrap="nowrap" id="logo" valign="bottom">PARIKSHA.COM</td>
   <td width="176" rowspan="2"><img src="mm_spa_photo2.jpg" alt="header image 2" width="176" height="108" border="0" /></td>
   <td width="177" rowspan="2">&nbsp;</td>
  </tr>

  <tr bgcolor="#220103">
    <td height="54" colspan="2" nowrap="nowrap" id="tagline" valign="top">Bringing Examinations At Your Doorsteps</td>
  </tr>

 <tr bgcolor="#FF9900">
 	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
 </tr>

 <tr bgcolor="#FF080E">
 	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="2" border="0" /></td>
 </tr>

 <tr bgcolor="#FF9900">
 	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
 </tr>

 <tr bgcolor="#800080">
 	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="18" border="0" /><%
 	AdminDAO dao=new AdminDAO();
 	Admin u=(Admin)dao.getadmin(adminName);
 	%>
 	<form method="post" action="AdminloginServlet">
 	<input type="hidden" name="username" value="<%=u.getUsername() %>"></input>
 	<input type="hidden" name="password" value="<%=u.getPassword() %>"></input>
 	
 	<input type="submit" value="ADMIN HOME PAGE"></input>
 	</form></td>
 </tr>

 <tr bgcolor="#FF9900">
 	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
 </tr>

 <tr bgcolor="#FF080E">
 	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="2" border="0" /></td>
 </tr>

 <tr bgcolor="#FF9900">
 	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
 </tr>

 <tr>
    <td width="236" valign="top" id="navborder"><br />
      <table width="191" border="0" cellpadding="0" cellspacing="0" id="navigation">
        <tr>
          <td width="191"><a href="ChangeadminpassServlet" class="navText style2">CHANGE PASSWORD </a></td>
        </tr>
        <tr>
          <td><a href="ChaptermanagementServlet;" class="style3 navText"><strong>CHAPTERS MANAGEMENT </strong></a></td>
        </tr>
        <tr>
          <td><a href="TestmanagementServlet" class="navText"><strong>TEST MANAGEMENT</strong></a></td>
        </tr>
        <tr>
          <td><a href="ViewuserServlet" class="navText"><strong>VIEW STUDENT DETAILS</strong></a></td>
        </tr>
        <tr>
          <td><a href="ViewstudentscoreServlet" class="navText"><strong>VIEW STUDENTS' SCORES</strong></a></td>
        </tr>
      </table></td>
    <td width="61"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
    <td width="429" valign="top"><img src="mm_spacer.gif" alt="" width="305" height="1" border="0" /><br />
	&nbsp;<br />
	&nbsp;<br />
  	<table border="0" cellspacing="0" cellpadding="0" width="305">
        <tr>
          <td class="pageName">ADD NEW QUESTIONS...!! </td>
        </tr>
        <tr>
          <td class="bodyText"><p>&nbsp;</p>

		</td>
        </tr>
      </table>
	   <br />
	&nbsp;<br />
	<form id="form1" name="form1" method="post" action="">
      <p>
      <%
      QuestionDAO dao1=new QuestionDAO();
      ArrayList<Createquestions> al=(ArrayList<Createquestions>)dao1.view();
      
      %>
      <table border='1'>
       <tr>
       <th>QUESTION NO</th>
       <th>QUESTION </th>
       <th>ACTION</th>
       <%for(Createquestions e:al)
    	   {
    	   
    	   %>
    	
    	   <tr>
    	   <td><%=e.getQuestionno()%></td>
    	   <td><%=e.getQuestion()%></td>
    	   <td><a href="editquestions.jsp?quesno=<%=e.getQuestionno()%>">EDIT QUESTIONS</a>
			</td>
			</tr>
			<%} %>
			</tr>
      </table>
	</form></td>
    <td width="50"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
    <td width="176" valign="top"><br /></td>
    <td width="177">&nbsp;</td>
  </tr>
  <tr>
    <td width="236">&nbsp;</td>
    <td width="61">&nbsp;</td>
    <td width="429">&nbsp;</td>
    <td width="50">&nbsp;</td>
    <td width="176">&nbsp;</td>
	<td width="177">&nbsp;</td>
  </tr>
</table>
</body>
</html>