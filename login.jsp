<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Intrusion Detection</title> 
<meta name="keywords" content="pink round theme, web design, free css template," /> 
<meta name="description" content="Pink Round Theme, free CSS template, web design" /> 
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />


<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script type="text/javascript">
function valid()
{
var a=document.medical.name.value;
var b=document.medical.pass.value;
if(a=="")
{
alert("plz provide name");
document.medical.name.focus();
return false;
}
if(b=="")
{
alert("plz provide password");
document.medical.pass.focus();
return false;
}
}
function valid1()
{
var a=document.medical1.name.value;
var b=document.medical1.pass.value;
if(a=="")
{
alert("plz provide name");
document.medical1.name.focus();
return false;
}
if(b=="")
{
alert("plz provide password");
document.medical1.pass.focus();
return false;
}
}
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
    	
    <div id="content_title" align="center"><font size="5">UserLogin </font></div>
      <div id="templatemo_content">
	  <div class="col_allw280">
                <h3><table>
				<tr>
				<td width="640" height="211">
				<img src="images/1image.jpg" width="312" height="190">
				</td>
				</tr>
				</table></h3>
                
              <p><em></em></p>
               
            </div>
        
<div class="col_allw280">
                <h3><form name="medical" action="userlogin.jsp" method="post" onsubmit="return valid()">
				<table align="center"><tr><td><img src="images/image.jpeg"></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td align="right" ><table align="right" bgcolor="#DE325E" height="201"  cellpadding="4" cellspacing="4">
 <tr>
                <td width="69"><font size="4">UserName</font></td>
 <td width="210">
  <input name="name" type="text">
 </td>
  </tr>
   <div class="blank"></div>
  <tr>
                <td><font size="4">Password</font></td>
 <td>
   <input name="pass" type="password">
 </td>
  </tr>
   
     <tr>
	<td></td>
 <td >
  <input style="background-color:#a20228;font-family: Tahoma, Geneva, sans-serif; color:#ffffff" name="s" type="submit" value="login" class="login">
 <input style="background-color:#a20228;font-family: Tahoma, Geneva, sans-serif; color:#ffffff" type="reset" name="clear" value="reset"></td>
 
    </tr>  <tr>
	<td height="44"></td>
	<td> <p><font size="3"><strong><font color="#663300" size="2" face="Arial, Helvetica, sans-serif">Not yet a Member?</font></strong></font> 
                          <a href="userform.jsp"><em><font color="#FFFFFF">Register 
                          Now</font></em></a></p></td></tr>
	
    </table></td></tr></table>
  </form>
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