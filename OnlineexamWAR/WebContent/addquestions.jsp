<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<script type="text/javascript">
function validation()
{
	if(document.getElementById("ques").value=='')
	{
		alert("please enter QUESTION");
		document.getElementById("ques").focus();
		return false;
	}
	else if(document.getElementById("opt1").value=='')
	{
		alert("please enter option1");
		document.getElementById("opt1").focus();
		return false;
	}
	else if(document.getElementById("opt2").value=='')
	{
		alert("please enter option2");
		document.getElementById("opt2").focus();
		return false;
	}
	else if(document.getElementById("opt3").value=='')
	{
		alert("please enter option3");
		document.getElementById("opt3").focus();
		return false;
	}
	else if(document.getElementById("opt4").value=='')
	{
		alert("please enter option4");
		document.getElementById("opt4").focus();
		return false;
	}
	else if(document.getElementById("ans").value=='')
	{
		alert("please enter answer");
		document.getElementById("answer").focus();
		return false;
	}
	
}
</script>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>PARIKSHA.COM</title>
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
   <td width="543" height="55" nowrap="nowrap" id="logo" valign="bottom">PARIKSHA.COM</td>
   <td width="176" rowspan="2"><img src="mm_spa_photo2.jpg" alt="header image 2" width="176" height="108" border="0" /></td>
   <td width="178" rowspan="2">&nbsp;</td>
  </tr>

  <tr bgcolor="#220103">
    <td height="54" nowrap="nowrap" id="tagline" valign="top">Bringing Examinations At Your Doorsteps</td>
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
 	<td colspan="4" height="18" id="dateformat">|| <a href="homepage.jsp">HOME</a> ||</td>
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
    <td width="199">&nbsp;</td>
	<td valign="top" colspan="3">&nbsp;<br />
	&nbsp;<br />
	<table border="0" cellspacing="0" cellpadding="2" width="504">
        <tr>
          <td class="pageName"><p>ENTER YOUR QUESTION HERE</p>
          <p>&nbsp; </p></td>
        </tr>
        <tr>
        <%
        String chapterid=request.getParameter("chapid");
        %>
        
          <td class="bodyText"><form id="form1" name="form1" method="post" onsubmit=" return validation()" action="AddquestionServlet?chapid=<%=chapterid%>">
            
            <p>
              <label>Enter Your Question
                <input name="question" type="text" size="100" id="ques"/>
                </label>
            </p>
            <p>
              <label>Option (1)<br />
                <input name="option1" type="text" size="40" id="opt1" />
                </label>
            </p>
            <p>
              <label>Option (2)<br />
              <input name="option2" type="text" size="40" id="opt2"/>
              </label>
</p>
            <p>
              <label>Option (3)<br />
              <input name="option3" type="text" size="40" id="opt3"/>
              </label>
</p>
            <p>
              <label>Option (4)<br />
              <input name="option4" type="text" size="40" id="opt4"/>
              </label>
</p>
            <p>
              <label>Correct Answer <br />
              <input name="answer" type="text" size="40" id="ans"/>
              </label>
</p>
            <p>&nbsp;</p>
            <p></p>
            <p>
              <label>
              <input type="submit" name="Submit" value="SUBMIT" />
              </label>
              <label>
              <input type="submit" name="Submit2" value="RESET" />
              </label>
            </p>
            <p></p>
          </form>            <p style="margin-top: 0;">&nbsp;</p>		  </td>
        </tr>
        <tr id="monthformat">
          
        </tr>
        <tr>
          
        </tr>
        <tr id="monthformat">
          
        </tr>
        <tr>
                   
        </tr>
        <tr id="monthformat">
          
        </tr>
        <tr>
          
        </tr>
      </table>
	  
	<td width="178">&nbsp;</td>
  </tr>
  <tr>
    <td width="199">&nbsp;</td>
    <td width="16">&nbsp;</td>
    <td width="543">&nbsp;</td>
    <td width="176">&nbsp;</td>
	<td width="178">&nbsp;</td>
  </tr>
</table>
</body>
</html>