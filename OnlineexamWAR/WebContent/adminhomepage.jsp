<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Home Page</title>
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
   <td rowspan="2" colspan="2" nowrap="nowrap"><img src="mm_spa_photo1.jpg" alt="Header image" width="215" height="109" border="0" /></td>
   <td colspan="2" height="55" nowrap="nowrap" id="logo" valign="bottom">PARIKSHA.COM</td>
   <td width="190" rowspan="2"><img src="mm_spa_photo2.jpg" alt="header image 2" width="176" height="108" border="0" /></td>
   <td width="239" rowspan="2">&nbsp;</td>
  </tr>

  <tr bgcolor="#220103">
    <td height="54" colspan="2" nowrap="nowrap" id="tagline" valign="top">Bringing Examinations At your Doorsteps.... </td>
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
 	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="18" border="0" /><a href="AdminlogoutServlet"><B>LOGOUT</B></a></td>
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
    <td width="186" valign="top" id="navborder"><br />
	<table border="0" cellspacing="0" cellpadding="0" width="237" id="navigation">
        <tr>
          <td width="237"><a href="ChangeadminpassServlet" class="navText"><strong>CHANGE PASSWORD </strong></a></td>
        </tr>
        <tr>
          <td width="237"><a href="ChaptermanagementServlet" class="navText"><strong> CHAPTERS </strong>MANAGEMENT</a></td>
        </tr>
        <tr>
          <td width="237"><a href="TestmanagementServlet" class="navText"><strong> TESTS MANAGEMENT </strong></a></td>
        </tr>
        <tr>
          <td width="237"><a href="ViewuserServlet" class="navText"><strong>VIEW STUDENTS DETAILS </strong></a></td>
        </tr>
        <tr>
          <td width="237"><a href="ViewstudentscoreServlet" class="navText"><strong>VIEW STUDENTS MARKS </strong></a></td>
        </tr>
      </table>	 </td>
    <td width="50"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
    <td width="305" valign="top"><img src="mm_spacer.gif" alt="" width="305" height="1" border="0" /><br />
	&nbsp;<br />
	&nbsp;<br />
  	<table border="0" cellspacing="0" cellpadding="0" width="410">
        <tr>
          <td width="410" class="pageName"><p>WELCOME ADMIN .... </p>
            <p>&nbsp;</p></td>
        </tr>
        <tr>
          <td class="bodyText"><p>This Home Page layout makes a great starting point for your website. Virtually all of the content is customizable, including the images, the text, and the links. You can decide whether to keep the existing graphics or swap them out for pictures of your own.</p>

		<p>The text on this page is intended to help you jumpstart your design by suggesting the sort of content you may want to include, but don't let it limit you. The same is also true for the link text - feel free to change the names of the links to better suit your particular needs. If you have any questions about using Contribute to edit these pages, refer to the Read Me file included with the download or to the Contribute Help System. Have fun and make a great website!</p>		</td>
        </tr>
      </table>
	  <br />
	&nbsp;<br />	</td>
    <td width="50"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
    <td width="190" valign="top"><br />
	<table border="0" cellspacing="0" cellpadding="0" width="354" bgcolor="#FFFFCC">
        <tr>
		  <td colspan="3" class="columnHeader" align="center"><br />
		    ADMIN NOTICES <br /><br /></td>
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
         <td width="204">&nbsp;</td>
        </tr>
      </table>	</td>
	<td width="239">&nbsp;</td>
  </tr>
  <tr>
    <td width="186">&nbsp;</td>
    <td width="50">&nbsp;</td>
    <td width="305">&nbsp;</td>
    <td width="50">&nbsp;</td>
    <td width="190">&nbsp;</td>
	<td width="239">&nbsp;</td>
  </tr>
</table>
</body>

</html>