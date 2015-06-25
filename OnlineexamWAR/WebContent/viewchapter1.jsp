<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.servlet.*,java.util.*,org.dao.*,java.sql.*,org.dao.setquestions.*,org.dao.chapter.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Text</title>
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

<table border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#220103">
   <td colspan="2" rowspan="2" nowrap="nowrap"><img src="mm_spa_photo1.jpg" alt="Header image" width="215" height="109" border="0" /></td>
   <td width="449" height="55" nowrap="nowrap" id="logo" valign="bottom"><div align="center">PARIKSHA.COM</div></td>
   <td width="318" rowspan="2"><img src="mm_spa_photo2.jpg" alt="header image 2" width="176" height="108" border="0" /></td>
   <td width="121" rowspan="2">&nbsp;</td>
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
	<table border="0" cellspacing="0" cellpadding="2" width="930">
        <tr>
          <td class="pageName"><div align="center">SET-1</div></td>
        </tr>
        <tr>
          <td class="bodyText" width="1095">
          <form id="form1" name="form1" method="post" action="">
          <br>
                  	  
          </form>            <p>&nbsp;</p>

			
	<td width="121">&nbsp;</td>
  </tr>
  <tr>
    <td width="40">&nbsp;</td>
    <td width="175">&nbsp;</td>
    <td width="449">&nbsp;</td>
    <td width="318">&nbsp;</td>
	<td width="121">&nbsp;</td>
  </tr>
</table>
<table border='1'><caption>CHAPTER DATABASE</caption>
          <tr>
            <th>CHAPTER ID</th>
            <th>CHAPTER NAME</th>
            <th>TYPE</th>
              
           <%

			 ChapterDAO dao=new ChapterDAO();
			 ArrayList<Chapter> al=dao.view();
			
             for(Chapter e: al)
        	 {
        	  %>
        	  <tr>
        	     <td><%=e.getChapterid() %></td>
        	     <td><%=e.getChaptername() %></td>
        	     <td><%=e.getType() %></td>
        	     
        	  </tr>
        	  <% } %>
        	  </tr>
        	  </table>

</body>
</html>