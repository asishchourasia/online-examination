<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Calendar</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_travel2.css" type="text/css" />
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------
</script>
</head>
<body bgcolor="#C0DFFD">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#3366CC">
    <td width="382" colspan="2" rowspan="2" nowrap="nowrap"><img src="mm_travel_photo.jpg" alt="Header image" width="382" height="127" border="0" /></td>
    <td width="378" height="63" id="logo" valign="bottom" align="center" nowrap="nowrap">PARIKSHA.COM</td>
    <td width="100%">&nbsp;</td>
  </tr>
  <tr bgcolor="#3366CC">
    <td height="64" id="tagline" valign="top" align="center"><span class="tagline">Examinations At your Door </span></td>
	<td width="100%">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

  <tr bgcolor="#CCFF99">
  	<td>&nbsp;</td>
  	<td colspan="3" id="dateformat" height="25"><span class="navText"><a href="homepage.jsp">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="news.jsp">NEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="adminlogin.jsp">MEMBER LOGIN </a>&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp; <a href="reviews.jsp">REVIEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="contest.jsp">TODAY'S CONTEST </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="contact.jsp">CONTACT US</a>&nbsp;</span>
    <script language="JavaScript" type="text/javascript">document.write(TODAY);	</script>	</td>
  </tr>
 <tr>
    <td colspan="4" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>
 <tr>
    <td width="40">&nbsp;</td>
    <td colspan="2" valign="top">&nbsp;<br />
    &nbsp;<br />
   <table border="0" cellspacing="0" cellpadding="2" width="504">
        <tr>
          <td class="pageName"><div align="center">TODAY'S CONTEST IS </div></td>
        </tr>
        <tr>
          <td class="bodyText"><p style="margin-top: 0;">&nbsp;</p>		  </td>
        </tr>
        <tr>
          <td class="subHeader" align="right" id="monthformat">ENTER MONTH HERE</td>
        </tr>
        <tr>
          <td class="bodyText" valign="top"><p><strong>ENTER DATE
              HERE:</strong> Event description. Rapiebant me spectacula theatrica,
              plena imaginibus miseriarum mearum et fomitibus ignis mei. quis
              est, quod ibi homo vult dolere.</p>

		   <p><strong>ENTER DATE
              HERE:</strong> Event description. Rapiebant me spectacula theatrica,
              plena imaginibus miseriarum mearum et fomitibus ignis mei. quis
              est, quod ibi homo vult dolere.</p>            </td>
        </tr>
        <tr>
          <td class="subHeader" align="right" id="monthformat">ENTER MONTH HERE</td>
        </tr>
        <tr>
          <td class="bodyText" valign="top"><p><strong>ENTER DATE
              HERE:</strong> Event description. Rapiebant me spectacula theatrica,
              plena imaginibus miseriarum mearum et fomitibus ignis mei. quis
              est, quod ibi homo vult dolere.</p>            </td>
        </tr>
        <tr>
          <td class="subHeader" align="right" id="monthformat">ENTER MONTH HERE</td>
        </tr>
        <tr>
          <td class="bodyText" valign="top"><p><strong>ENTER DATE
              HERE:</strong> Event description. Rapiebant me spectacula theatrica,
              plena imaginibus miseriarum mearum et fomitibus ignis mei. quis
              est, quod ibi homo vult dolere.</p>           </td>
        </tr>
      </table>
	 <br />	  </td>
	<td width="100%">&nbsp;</td>
  </tr>

 <tr>
    <td width="40">&nbsp;</td>
    <td width="342">&nbsp;</td>
    <td width="378">&nbsp;</td>
	<td width="100%">&nbsp;</td>
  </tr>
</table>
</body>
</html>
