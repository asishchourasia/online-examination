<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<script type="text/javascript">
function validation()
{
	
	
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
<title>Pariksha-Admin Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
</head>
<body bgcolor="#0066cc">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr bgcolor="#99ccff">
	<td width="15" nowrap="nowrap">&nbsp;</td>
	<td width="745" height="60" colspan="2" class="logo" nowrap="nowrap"><br />
	PARIKSHA.COM <span class="tagline">|Examination at your door service.. </span></td>
	<td width="100%">&nbsp;</td>
	</tr>

	<tr bgcolor="#003399">
	<td width="15" nowrap="nowrap">&nbsp;</td>
	<td height="36" colspan="2" id="navigation" nowrap="nowrap" class="navText"><a href="homepage.jsp">HOME</a></td>
	<td>&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td width="15" valign="top"><img src="mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	<td width="35" valign="top"><img src="mm_spacer.gif" alt="" width="35" height="1" border="0" /></td>
	<td width="710" valign="top"><br />
	<table border="0" cellspacing="0" cellpadding="2" width="610">
        <tr>
          <td class="pageName" colspan="3">Pariksha.com</td>
        </tr>
        <tr>
         <td width="305" class="subHeader">MEMBER PLEASE REGISTER HERE !! </td>
		  <td width="7" rowspan="2">&nbsp;</td>
		  <td width="286" height="100" rowspan="2"><img src="mm_product_lg.gif" alt="large product photo" width="250" height="250" border="0" /></td>
        </tr>
        <tr>
          <td valign="top" class="bodyText"><p>&nbsp;</p>
            <form id="form1" name="form1" method="post" onsubmit="return validation()"action="AdminloginServlet">
              <label>Username
                <input type="text" name="username" id="username" />
              </label>
              <p>
                <label>Password
                <input type="password" name="password" id="password" />
                </label>
              </p>
              <p align="center">
              <label>
                <div align="left">
                  <input type="submit" name="Submit value="Submit" />
                </label>
            </form>
            <p>&nbsp;</p>
            <p>&nbsp;</p></td>
        </tr>
      </table>
	 <br />
	  &nbsp;<br />	</td>
	<td>&nbsp;</td>
	</tr>

	<tr>
	<td width="15">&nbsp;</td>
    <td width="35">&nbsp;</td>
    <td width="710">&nbsp;</td>
	<td width="100%">&nbsp;</td>
  </tr>
</table>
</body>
</html>
