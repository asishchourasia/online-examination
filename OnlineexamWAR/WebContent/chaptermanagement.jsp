<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="org.servlet.*,java.util.*,org.dao.*,java.sql.*,org.dao.setquestions.*,org.dao.admin.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_spa.css" type="text/css" />
<style type="text/css">
<!--
.style1 {font-size: 18px}
.style2 {
	font-size: 14px;
	font-weight: bold;
}
.style3 {font-size: 16px}
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

<table border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#220103">
   <td width="215" rowspan="2" colspan="2" nowrap="nowrap"><img src="mm_spa_photo1.jpg" alt="Header image" width="215" height="109" border="0" /></td>
   <td width="355" colspan="2" height="55" nowrap="nowrap" id="logo" valign="bottom">PARIKSHA.COM</td>
   <td width="190" rowspan="2"><img src="mm_spa_photo2.jpg" alt="header image 2" width="176" height="108" border="0" /></td>
   <td width="100%" rowspan="2">&nbsp;</td>
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
 	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="18" border="0" />
 		<%
 	AdminDAO dao=new AdminDAO();
 	Admin u=(Admin)dao.getadmin(adminName);
 	%>
 	<form method="post" action="AdminloginServlet">
 	<input type="hidden" name="username" value="<%=u.getUsername() %>"></input>
 	<input type="hidden" name="password" value="<%=u.getPassword() %>"></input>
 	
 	<input type="submit" value="ADMIN HOME PAGE"></input>
 	</form></a></td>
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
    <td width="165" valign="top" id="navborder"><br />
	<table border="0" cellspacing="0" cellpadding="0" width="192" id="navigation">
        <tr>
          <td width="193"><a href="ChangeadminpassServlet" class="navText style2">CHANGE PASSWORD </a></td>
        </tr>
        <tr>
          <td width="193"><a href="ChaptermanagementServlet" class="style3 navText"><strong>CHAPTERS MANAGEMENT </strong></a></td>
        </tr>
        <tr>
          <td width="193"><a href="TestmanagementServlet" class="navText"><strong>TEST MANAGEMENT</strong></a></td>
        </tr>
        <tr>
          <td width="193"><a href="ViewuserServlet" class="navText"><strong>VIEW STUDENT DETAILS</strong></a></td>
        </tr>
        <tr>
          <td width="193"><a href="ViewstudentscoreServlet" class="navText"><strong>VIEW STUDENT RESULT</strong></a></td>
        </tr>
      </table>	 </td>
    <td width="50"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
    <td width="305" valign="top"><img src="mm_spacer.gif" alt="" width="305" height="1" border="0" /><br />
	&nbsp;<br />
	&nbsp;<br />
  	<table border="0" cellspacing="0" cellpadding="0" width="305">
        <tr>
          <td class="pageName"><strong><em>CHAPTER MANAGEMENT </em></strong></td>
        </tr>
        <tr>
          <td class="bodyText"><p>&nbsp;</p>		</td>
        </tr>
      </table>
	  
	  <p>&nbsp;</p>
	  <p><br />
        <span class="style1">&nbsp;<a href="AddchapterServlet"><b>1) ADD CHAPTERS</b></a></span></p>
	  <p>&nbsp;</p>
	  <p class="style2"><a href="DeletechapServlet" class="style3">2) DELETE CHAPTERS</a>      </p>
	  <p class="style2">&nbsp;</p>
	  <p class="style2"><a href="ViewchapterServlet" class="style3">3) VIEW CHAPTERS</a> </p></td>
    <td width="50"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
    <td width="190" valign="top"><br />
	<table border="0" cellspacing="0" cellpadding="0" width="190" bgcolor="#FFFFCC">
        <tr>
		  <td colspan="3" class="columnHeader" align="center"><br />FEATURED PRODUCTS<br /><br /></td>
        </tr>

       <tr>
       <td width="40"><img src="mm_spacer.gif" alt="" width="20" height="1" border="0" /></td>
		<td width="110" class="smallText"><br />
			<p><img src="mm_product_sm.gif" alt="product image 1" width="110" height="110" vspace="6" border="0" /><br />
			Lorem ipsum dolor sit amet consetetur.<br /> <a href="javascript:;">read more &gt;</a></p>

			<p><img src="mm_product_sm.gif" alt="product image 2" width="110" height="110" vspace="6" border="0" /><br />
			Lorem ipsum dolor sit amet consetetur.<br />
			<a href="javascript:;">read more &gt;</a><br /></p>
			<br />          </td>
         <td width="40">&nbsp;</td>
        </tr>
      </table>	</td>
	<td width="100%">&nbsp;</td>
  </tr>
  <tr>
    <td width="165">&nbsp;</td>
    <td width="50">&nbsp;</td>
    <td width="305">&nbsp;</td>
    <td width="50">&nbsp;</td>
    <td width="190">&nbsp;</td>
	<td width="100%">&nbsp;</td>
  </tr>
</table>
</body>
</html>
