<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Intrusion Detection</title> 
<meta name="keywords" content="pink round theme, web design, free css template," /> 
<meta name="description" content="Pink Round Theme, free CSS template, web design" /> 
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script language="JavaScript" src="ts_picker.js">

//Script by Denis Gritcyuk: tspicker@yahoo.com
//Submitted to JavaScript Kit (http://javascriptkit.com)
//Visit http://javascriptkit.com for this script
</script>
<script>
function startTime()
{
var today=new Date();
var h=today.getHours();
var m=today.getMinutes();
var s=today.getSeconds();
// add a zero in front of numbers<10
m=checkTime(m);
s=checkTime(s);
document.getElementById('txt').innerHTML=h+":"+m+":"+s;
t=setTimeout(function(){startTime()},500);
}

function checkTime(i)
{
if (i<10)
  {
  i="0" + i;
  }
return i;
}
</script>

   <link href="calendar.css" rel="stylesheet" type="text/css">



<script type="text/javascript">
function validation()
{
var a=document.login.name.value;
var b=document.login.pass.value;

var b1=document.login.rpass.value;
var c1=document.login.dob.value;
var c=document.login.mail.value;
/*var d=document.login.add.value;*/
if(a=="")
{
alert("please inset Name");
document.login.name.focus();
return false;
}

if(b=="")
{
alert("please inset password");
document.login.pass.focus();
return false;
}

if(b1=="")
{
alert("Retype Repassword");
document.login.rpass.focus();
return false;
}
if(b!=b1)
{
alert("please enter same password");
document.login.rpass.focus();
return false;
}

if(document.login.gender[0].checked==false&&document.login.gender[1].checked==false)
{
alert("please select gender");
document.login.focus();
return false;
}
if(c1=="")
{
alert("please inset Dob");
document.login.dob.focus();
return false;
}

if(c=="")
{
alert("please inset Email");
document.login.mail.focus();
return false;
}
/*if(d=="")
{
alert("please inset address");
document.login.add.focus();
return false;
}*/
}
</script>




</head>
<body onload="startTime()">

<div id="templatemo_wrapper">
	
    <div id="templatemo_header">
    	
        <div id="site_title">
      <h1></br> &nbsp;&nbsp;&nbsp;&nbsp;<font color="#FFFFFF"> <font size="+2">IDSaaS</font></font></h1>
    </div> 
        <div id="templatemo_menu">
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="login.jsp" class="current">Login</a></li>
                <li><a href="admin.jsp">Admin</a></li>
                <li class="last"><a href="index.html">Logout</a></li>
				 <li class="last"><a href="#"><div id="txt"></div></a></li>
            </ul>    	
        </div> <!-- end of templatemo_menu -->
        
        <div class="cleaner"></div>
    </div> <!-- end of header -->
    
    
    	
		<div id="templatemo_middle" align="center">
	<img src="images/ti.png" width="880" height="125">
		
		
		<div class="cleaner h10"></div>
	</div> <!-- end of templatemo_middle -->
    
    <div id="templatemo_main">
    	<div id="content_title" align="center">                                      UserRegistration Form
        	       </div>
      <div id="templatemo_content">
	  <div class="col_allw280">
                <h3></h3>
                
              <p><em></em></p>
               
            </div>
        
<div class="col_allw280">
               <h3>
 <form name="login" method="post" action="insert.jsp" onSubmit="return validation()" >

<table align="center" bgcolor="#DE325E" height="500" width="400">
<tr>
                <td><font size="4">User Name</font></td>
<td><input type="text" name="name"></td>
</tr>
<tr>
                <td><font size="4">Password</font></td>
<td><input type="Password" name="pass"></td>
</tr>
<tr>
                <td><font size="4">RetypePassword</font></td>
<td><input type="Password" name="rpass"></td>
</tr>
 <tr>
                <td><font size="4">Gender</font></td>
        <td><input type="radio" name="gender" value="male" />
                  <font size="4">male</font>&nbsp; 
                  <input type="radio" name="gender" value="Female" />
                  <font size="4">female</font></td>
        </tr>
<tr> 		
	            <td><font size="4">date</font></td>
	  <td class="s1" ><input name="dob" type="Text" id="demo1" maxlength="25" size="20"><a href="javascript:show_calendar('document.login.dob', document.login.dob.value);"><img src="cal.gif" width="16" height="16" border="0" alt="Click Here to Pick up the timestamp"></a>
	  		<span class="descriptions"></span></td>
	  </tr>
          <tr>      <td><font size="4">Email</font></td>
<td><input type="text" name="mail"></td>
</tr>

<tr> 
                <td><font size="4">Address</font></td>
          <td><textarea name="add" cols="15"></textarea></td>
        </tr>
<tr>
<td></td>
<td><input style="background-color:#a20228;font-family: Tahoma, Geneva, sans-serif; color:#ffffff" name="s" type="submit" value="login" class="login">
 <input style="background-color:#a20228;font-family: Tahoma, Geneva, sans-serif; color:#ffffff" type="reset" name="clear" value="reset"></td></tr>
</table></form>

<!-- Calender Script  --> 

         

<!-- End Calender Script  --> 
</h3>             
             <ul class="tmo_list">
                  	<li> </li>
                    <li></li>
                    <li> </li>
                    <li></li>                        
              </ul>
                <div class="cleaner"></div>
               
            </div>
            
            <div class="col_allw280 col_last">
                <h3></h3>
                <div class="sb_news_box">
                    <div class="news_date"></div>
                    
        
                    <div class="cleaner"></div>
                </div>
                <div class="sb_news_box">
                    <div class="news_date"></div>
                   
                    
                    <div class="cleaner"></div>
                </div>
               
               
            </div>
            <div class="cleaner"></div>
        </div> <!-- end of templatemo_content -->
    </div> <!-- end of templatemo_main -->
    
   <div id="templatemo_footer"> <a href="#"><font face="Georgia, Times New Roman, Times, serif" size="3"></font>
    </div> <!-- end of footer wrapper -->
</div> <!-- end of wrapper -->

</body>
</html>



























