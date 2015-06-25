<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@page import="org.servlet.*,java.util.*,org.dao.*,java.sql.*,org.dao.setquestions.*,org.dao.chapter.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Entertainment - Product Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_entertainment.css" type="text/css" />
<style type="text/css">
<!--
.style1 {
	color: #FFFFFF;
	font-weight: bold;
}
.style2 {
	color: #99FF00;
	font-weight: bold;
}
.style3 {font-family: Arial, Helvetica, sans-serif}
.style5 {font-family: Verdana, Arial, Helvetica, sans-serif}
.style6 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; }
.style7 {
	font-size: 24px;
	color: #FFFFFF;
}
-->
</style>
</head>
<body bgcolor="#14285f">
<%!
public String remarks;
%>
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

   <%
String correct=(String)request.getAttribute("CORRECT");
String wrong=(String)request.getAttribute("WRONG");
int inttotal=Integer.parseInt(correct)+Integer.parseInt(wrong);
String total=String.valueOf(inttotal);
UserDAO dao=new UserDAO();

User u=(User)dao.getname(Integer.parseInt(userName));



%> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="02021e">
    <td colspan="2" rowspan="2" nowrap="nowrap"><img src="mm_entertainment_image.jpg" alt="Header image" width="400" height="140" border="0" /></td>
    <td width="685" height="58" nowrap="nowrap" id="logo" valign="bottom"><div align="center">PARIKSHA.COM</div></td>
    <td width="18">&nbsp;</td>
  </tr>
  <tr bgcolor="02021E">
    <td height="57" nowrap="nowrap" id="tagline" valign="top"><div align="center">Bringing Examinations At Your Doorsteps </div></td>
	<td width="18">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4" bgcolor="#cc3300"><img src="mm_spacer.gif" alt="" width="1" height="2" border="0" /></td>
  </tr>

   <tr>
    <td colspan="4"><img src="mm_spacer.gif" alt="" width="1" height="2" border="0" /></td>
  </tr>

   <tr>
    <td colspan="4" bgcolor="#cc3300"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>
   <tr>
    <td colspan="5" id="dateformat">&nbsp;<br />      <br />	</td>
  </tr>
  <tr>
    <td width="50" valign="top">&nbsp;</td>
   <td colspan="2" valign="top"><br />
	<table border="0" cellspacing="0" cellpadding="2" width="1056">
        <tr>
          <td class="subHeader" colspan="3"><p align="center" class="pageName style7" style="margin-top: 0; margin-bottom: 1px;"> ..............CERTIFICATE OF PERFORMANCE...........</p>
            <p style="margin-bottom: 0;">&nbsp;</p>            </td>
        </tr>
        <tr>
          <td width="267" height="250" rowspan="2" align="center" class="subHeader"><img src="mm_product_lg.jpg" alt="large product photo" width="250" height="250" border="0" /></td>
          <td width="8" rowspan="2">&nbsp;</td>
          <td width="769" class="sidebarHeader">&nbsp;</td>
        </tr>
        <tr>
          <td valign="top" class="bodyText"><p align="center" class="style5">&nbsp;</p>
            <p align="center" class="style5">&nbsp;</p>
            <p align="left" class="style6">THIS IS TO CERTIFY THAT MR <span class="style1">&nbsp;&nbsp;<%=u.getFirstname().toUpperCase() %> <%=u.getLastname().toUpperCase() %></span></p>
            <p align="left" class="style6"> SCORED <span class="style2">&nbsp;&nbsp;&nbsp;<%=correct %>&nbsp;&nbsp;&nbsp;</span>OUT OF <span class="style2">&nbsp;&nbsp;&nbsp;8 </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IN WHICH WRONG ARE &nbsp;&nbsp;&nbsp;<span class="style2">&nbsp;&nbsp;&nbsp;<%=wrong %></span></p>
            <%
            int correct1=Integer.parseInt(correct);
            if(correct1>10)
            	remarks="EXCELLENT";
            else if(correct1>5 && correct1<10)
            	 remarks="GOOD";
            else if(correct1>0&&correct1<5)
            	 remarks="POOR";
            else if(correct1==0)
            	 remarks="KYA FAYADA HUA PADH KE TUMKO ?";
            	%>
            <p align="left" class="style3"><span class="style6">REMARKS <span class="style1">&nbsp;&nbsp;<%= remarks %></span></span></p>
            <p align="left"><strong></strong> </p>
            
           
            <form id="form1" name="form1" method="post" action="HomepageServlet">
              <label>
              <div align="center">
                <p align="left"><BR />
                  <input type="hidden" name="username" value="<%=u.getUsername()%>"/>
                  <input type="hidden" name="password" value="<%=u.getPassword()%>"/>
                  <input type="submit" name="Submit" value="TAKE ANOTHER TEST" />
                </p>
              </div>
              </label>
                                    </form>            </td>
        </tr>
      </table>	  </td>
	  <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="50">&nbsp;</td>
    <td width="359">&nbsp;</td>
    <td width="685">&nbsp;</td>
	<td width="18">&nbsp;</td>
  </tr>
</table>
<br />
</body>
</html>
