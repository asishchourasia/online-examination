<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function validation()
{
	
	
	if(document.getElementById("firstname").value=='')
	{
		alert("please enter first name");
		document.getElementById("firstname").focus();
		return false;
	}
	else if(document.getElementById("lastname").value=='')
	{
		alert("please enter last name");
		document.getElementById("lastname").focus();
				return false;
	}
	else if(document.getElementById("emailid").value=='')
	{
		alert("please enter emailid");
		document.getElementById("emailid").focus();
				return false;
	}

	else if((form1.r1[0].checked==false) && (form1.r1[1].checked==false))
	{
		alert("please select gender");
		//document.getElementById("r1").focus();
				return false;
	}
	
	
	else if(document.getElementById("address").value=='')
	{
		alert("please enter address");
		document.getElementById("address").focus();
				return false;
	}
	else if(document.form1.city.value=='choose city')
	{
		alert("please enter city");
		document.getElementById("city").focus();
				return false;
	}
	else if(document.getElementById("state").value=='Choose State')
	{
		alert("please enter state");
		document.getElementById("state").focus();
				return false;
	}
	else if(document.getElementById("pin").value=='')
	{
		alert("please enter pin");
		document.getElementById("pin").focus();
				return false;
	}
	else if(document.getElementById("institute").value=='')
	{
		alert("please enter institute");
		document.getElementById("institute").focus();
				return false;
	}
	else if(document.getElementById("degree").value=='Choose Degree')
	{
		alert("please enter DEGREE");
		document.getElementById("degree").focus();
				return false;
	}
	else if(document.getElementById("yop").value=='Choose Year')
	{
		alert("please enter YEAR OF PASSING");
		document.getElementById("yop").focus();
				return false;
	}
	else if(document.getElementById("username").value=='')
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
<title>PARIKSHA-Register Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
<style type="text/css">
<!--
.style4 {font-size: 14px}
-->
</style>
</head>
<body bgcolor="#0066cc">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr bgcolor="#99ccff">
	<td width="15" nowrap="nowrap" ><img src="mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	<td height="60" colspan="3" class="logo" nowrap="nowrap">PARIKSHA.COM <span class="tagline">| Examinations At your Door</span></td>
	<td width="30">&nbsp;</td>
	<td width="334"><div align="center"><span class="style4">04-Jan-2014 7:50 PM</span></div></td>
	</tr>

	<tr bgcolor="#003399">
	<td width="15" nowrap="nowrap">&nbsp;</td>
	<td height="36" colspan="3" id="navigation" nowrap="nowrap" class="navText"><a href="homepage.jsp">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="news.jsp">NEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="adminlogin.jsp">MEMBER LOGIN </a>&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp; <a href="reviews.jsp">REVIEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="contest.jsp">TODAY'S CONTEST </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="contact.jsp">CONTACT US</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	  <td width="30">&nbsp;</td>
	<td width="334">&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="2" valign="top" bgcolor="#ffffcc"><img src="mm_restaurant_image.jpg" alt="Home Page Image" width="230" height="270" border="0" />
	<table border="0" cellspacing="0" cellpadding="0" width="230">
		<tr>
		<td width="15">&nbsp;</td>
		<td width="200" class="smallText" id="padding">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam. <br />
		&nbsp;<br />		</td>
		<td width="15">&nbsp;</td>
		</tr>
	</table>	</td>
	<td width="50" valign="top"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
	<td width="468" valign="top"><br />
	&nbsp;<br />
	<table border="0" cellspacing="0" cellpadding="0" width="456">
	  <tr>
        <td width="456" class="pageHeader">JUST 1 STEP TO REGISTER </td>
	    </tr>
	  <tr>
        <td height="43" class="pageName">&nbsp;</td>
	    </tr>
	  <tr>
        <td class="bodyText"><p>&nbsp;</p></td>
	    </tr>
	  <tr>
        <td class="subHeader" id="monthformat">&nbsp;<br />
          ENTER DETAILS HERE </td>
	    </tr>
	  <tr>
        <td class="bodyText" valign="top">
		<form id="form1" name="form1" method="post" onsubmit=" return validation()" action="RegisterServlet">
            <label><br />
            <strong>First Name:</strong>
            <input type="text" name="firstname" id="firstname"/>
            </label>
            <label><strong>&nbsp;&nbsp;Last Name:</strong>
            <input type="text" name="lastname" id="lastname"/>
            </label>
            <p> <span class="style3"><br>
              <label><strong>Email-Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
                <input name="emailid" type="text" size="50" id="emailid"/>
              </label>
            </span> </p>
          <p>
              <label>
              <label><strong>Gender : &nbsp;&nbsp;</strong></label>
              <strong>
              <input id="r1" name="r1" type="radio" value="male" />
              <em> male
                </label>
              <label>
              <input id="r2" name="r1" type="radio" value="female"/>
                female</label>
            </em> </strong> </p>
          
          <p>
              <label><strong>Address:&nbsp;&nbsp;&nbsp;&nbsp;</strong>
              <textarea id="address" name="address"></textarea>
              </label>
            </p>
          <p>
              <label><strong>City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
              <select name="city" id="city"><option>choose city</option>
                <option>medinipur</option>
                <option>kolkata</option>
                <option>asansol</option>
                <option>patna</option><option>delhi</option><option>durgapur</option>
              </select>
              </label>
              <label> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;State</strong>
              <select name="state"id="state">
              <option>Choose State</option>
                <option>WEST BENGAL</option>
                <option>GOA</option>
              </select>
              <br><br><strong> Pin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
              <input name="pin" type="text" size="15" id="pin"/>
              </label>
            </p>
          <p>
            <label><br />
            <strong> Institute &nbsp;&nbsp;&nbsp;&nbsp;</strong>
            <input name="insname" type="text" size="55" id="institute"/>
            </label>
</p>
          <p> <p><span class="style1">
            <br><p><label><b>Degree :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <select name="degree"id="degree">
              <option>Choose Degree</option>
              <option>BTech</option>
              <option>BCA</option>
              <option>MTech</option>
            </select>
            </label>
            </span> <span class="style2">
            <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Year Of Passing
              <select name="yop" id="yop">
              <option>Choose Year</option>
              <option>2015</option>
              <option>2016</option>
            </select>
            </label>
          </span> </p><br>
          <p><strong>Username&nbsp;&nbsp;
              <input name="username" type="text" size="39" id="username"/>
          </strong></p>
          <p><strong><br>
            <label>Password&nbsp;&nbsp;&nbsp;
              <input name="password" type="text" size="39" id="password"/>
            </label>
          </strong></p>
          <p align="left">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input name="Submit" type="submit" class="logo" value="SUBMIT" />
          </p>
        </form></td>
	    </tr>
	  <tr>
        <td class="subHeader" id="monthformat">&nbsp;</td>
	    </tr>
	  <tr>
       
	    </tr>
	  
	 
	  
		
	</table>	</td>
	<td width="30">&nbsp;</td>
	<td width="334">&nbsp;</td>
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
	<td width="15">&nbsp;</td>
	<td width="215">&nbsp;</td>
	<td width="50">&nbsp;</td>
	<td width="468">&nbsp;</td>
	<td width="30">&nbsp;</td>
	<td width="334">&nbsp;</td>
	</tr>
</table>
</body>

</html>