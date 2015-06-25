<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.servlet.*,java.util.*,org.dao.*,java.sql.*,org.dao.setquestions.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Text</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_spa.css" type="text/css" />
</head>
<body bgcolor="#990000" background="mm_bg_red.gif">
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
 	<td colspan="4" height="18" id="dateformat">|| <a href="adminhomepage.jsp">HOME</a> ||</td>
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
<table border='1'><caption>STUDENT DATABASE</caption>
          <tr>
            <th>QUESTIONS NO</th>
            <th>QUESTION NAME</th>
            <th>OPTION 1</th>
            <th>OPTION 2</th>
            <th>OPTION 3</th>
            <th>OPTION 4</th>
            <th>ANSWER</th>  
           <%

			 QuestionDAO dao=new QuestionDAO();
			 ArrayList<Createquestions> al=dao.view();
			
             for(Createquestions e: al)
        	 {
        	  %>
        	  <tr>
        	     <td><%=e.getQuestionno() %></td>
        	     <td><%=e.getQuestion() %></td>
        	     <td><%=e.getOption1() %></td>
        	     <td><%=e.getOption2() %></td>
        	     <td><%=e.getOption3() %></td>
        	     <td><%=e.getOption4() %></td>
        	     <td><%=e.getAnswer() %></td>
        	  </tr>
        	  <% } %>
        	  </tr>
        	  </table>

</body>
</html>