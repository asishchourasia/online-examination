<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.dao.setquestions.*,org.dao.admin.*,org.dao.*,org.dao.chapter.*,java.util.*,java.sql.*,org.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>EDIT QUESTIONS</title>
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
   <tr bgcolor="#800080">
 	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="18" border="0" />
 	
 	
 	<%
 	AdminDAO dao=new AdminDAO();
 	Admin u1=(Admin)dao.getadmin(adminName);
 	%>
 	<form method="post" action="AdminloginServlet">
 	<input type="hidden" name="username" value="<%=u1.getUsername() %>"></input>
 	<input type="hidden" name="password" value="<%=u1.getPassword() %>"></input>
 	
 	<input type="submit" value="ADMIN HOME PAGE"></input>
 	</form>
     </td>
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
          <td class="pageName"><div align="center"> EDIT THE SELECTED QUESTION </div></td>
        </tr>
        <tr>
          <td class="bodyText" width="995">
          
          
          <%
         // int questionno=Integer.parseInt(request.getParameter("QUESNO"));
          int questionno=Integer.parseInt(request.getParameter("quesno").trim()); %>
<form method="post" action="UpdatequestionServlet">
<%

QuestionDAO dao1=new QuestionDAO();
//ArrayList<Createquestions> al=(ArrayList<Createquestions>)dao.quesdetails(questionno);
Createquestions u=(Createquestions)dao1.quesdetails(questionno);
%>
<div align="center">QUESTION<input  type="text" name="question" size="100" value="<%=u.getQuestion() %>"/><br><br></div>
<div align="center">OPTION 1<input type="text" name="option1" size="40" value="<%=u.getOption1() %>"/><br><br></div>
<div align="center">OPTION 2<input type="text" name="option2" size="40" value="<%=u.getOption2() %>"/><br><br></div>
<div align="center">OPTION 3<input type="text" name="option3" size="40" value="<%=u.getOption3() %>"/><br><br></div>
<div align="center">OPTION 4<input type="text" name="option4" size="40" value="<%=u.getOption4() %>"/><br><br></div>
<div align="center">ANSWER<input type="text" name="answer" size="40" value="<%=u.getAnswer() %>"/><br><br></div>
<div align="center"><input type="hidden" name="questionno" size="40" value="<%=u.getQuestionno() %>"/>
<div align="center"><input type="hidden" name="chapterid" size="40" value="<%=u.getChapterid() %>"/>
<div align="center"><input type="submit" value="EDIT"/>
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

