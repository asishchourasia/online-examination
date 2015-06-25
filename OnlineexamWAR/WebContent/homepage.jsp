<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<script>
function validation(){
if(document.getElementById("username").value=='')
{
	alert("please enter USERNAME");
	document.getElementById("username").focus();
			return false;
}
else if(document.getElementById("password").value=='')
{
	alert("please enter PASSWORD");
	document.getElementById("password").focus();
			return false;
}
}
</script>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>PARIKSHA - Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
<style type="text/css">
<!--
.style1 {
	font-size: 9px;
	color: #330099;
	font-weight: bold;
}
.style2 {color: #0000CC}
.style3 {font-family: Arial, Helvetica, sans-serif}
.style4 {
	font-size: 10px;
	font-weight: bold;
}
.style5 {
	font-size: 14px;
	font-weight: bold;
}
-->
</style></head>
<body bgcolor="#0066cc">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr bgcolor="#99ccff">
	<td width="52" nowrap="nowrap" ><img src="mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	<td height="78" colspan="3" class="logo" nowrap="nowrap"><span class="pageHeader style2">PARIKSHA.COM </span><span class="tagline">|<span class="style3"> Examinations Just A Click Away... </span><td width="100%"><div align="center"><%=new java.util.Date()%></div></td></td>
	<td width="50">&nbsp; </td>
	<td width="302">
	</tr>

	<tr bgcolor="#003399">
	<td width="52" nowrap="nowrap">&nbsp;</td>
	<td height="36" colspan="3" id="navigation" nowrap="nowrap" class="navText"><a href="homepage.jsp">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="news.jsp">NEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="adminlogin.jsp">MEMBER LOGIN </a>&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp; <a href="reviews.jsp">REVIEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="contest.jsp">TODAY'S CONTEST </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="contact.jsp">CONTACT US</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	  <td width="50">&nbsp;</td>
	<td width="302">&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="2" valign="top" bgcolor="#ffffcc"><img src="mm_restaurant_image.jpg" alt="Home Page Image" width="230" height="270" border="0" />
	<table border="0" cellspacing="0" cellpadding="0" width="230">
		<tr>
		<td width="15">&nbsp;</td>
		<td width="200" class="smallText" id="padding"><br />
		&nbsp;<br />		</td>
		<td width="15">&nbsp;</td>
		</tr>
	</table>	</td>
	<td width="50" valign="top"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
	<td width="480" valign="top"><br />
	&nbsp;<br />
	<table border="0" cellspacing="0" cellpadding="0" width="479">
		<tr>
		<td width="479" class="pageHeader"><p>WELCOME TO PARIKSHA.COM</p>
		  <p>&nbsp; </p></td>
		</tr>

		<tr>
		<td class="bodyText"><p>A WEBSITE DESIGNED FOR THE STUDENTS AND BY THE STUDENTS TO MAKE LEARNING EASIER</p>
		  <p>AND MORE INTERESTING.....  </p>
		  <br />		</td>
		</tr>
	</table>	</td>
	<td width="50"><div align="left"></div></td>
	<td width="302"><label>
	
	  <p>&nbsp;</p>
	  <p>&nbsp;</p>
	  <p>&nbsp;</p>
	  <div align="center">
	  <form id="form1" name="form1" method="post" onsubmit=" return validation()" action="HomepageServlet" >
	    <p><strong>Username
	      <input   type="text" name="username" id="username"/>
        </strong></p>
	    <p align="center"><strong>
          <label>Password</label>
          </strong>
            
            <label>
            <input  type="password" name="password" id="password" />
            </label>
        </p>
        
	    <p align="center">
          
          <input name="Submit" type="submit" value="LOGIN" />
        </p>
	    <p align="center" class="style1"><a href="forgotpassword.jsp">*Forgot Password ? </a></p>
	    <p align="center" class="style1"><span class="style4">*New User ?</span><a href="register.jsp">Signup Now!</a> </p>
	  </form>
	  
	  <p><strong><br />
	      <br />
	      <br />
	  </strong></p>
	  <p>&nbsp;</p>
	</div>
	</label>
      <p align="center"> 
          <strong>
          <label></label>
          </strong></p>
      <p align="left">&nbsp;</p>
      <p align="left">&nbsp;</p>
      <p align="left">&nbsp;</p>
      <p align="left">&nbsp;</p>
      <p align="left">&nbsp;</p>
      <p align="left">&nbsp;</p></td>
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
	<td width="52">&nbsp;</td>
	<td width="178">&nbsp;</td>
	<td width="50">&nbsp;</td>
	<td width="480">&nbsp;</td>
	<td width="50">&nbsp;</td>
	<td width="302">&nbsp;</td>
	</tr>
</table>
</body>
</html>
