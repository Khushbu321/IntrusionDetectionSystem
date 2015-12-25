<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

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
function validation1()

{

var m=document.form1.na.value;
if(m=="")
{
alert("Please enter a valid Name");
document.form1.na.focus();
return false;
}

var v=document.form1.pass.value;
if(v=="")
{
alert("Enter Your Password");
document.form1.pass.focus();
return false;
}
}

function validation()

{
var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.form.na.value);
if(m==false)
{
alert("Please enter a valid Email Id");
document.form.na.focus();
return false;
}
var v=document.form.pass.value;
if(v=="")
{
alert("Enter Your Password");
document.form.pass.focus();
return false;
}
}



</script>
<script language="javascript" type="text/javascript" src="datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com 

</script>
<script language="javascript" type="text/javascript">


function valid()
{
var name=document.s.unn.value;
var nameMatch=/^[a-z\A-Z]+$/;
if(!(name.match(nameMatch)))
{
alert("please enter valid name");
document.s.unn.focus();
return false;
}
var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.s.eidd.value);
if(m==false)
{
alert("Please enter a valid Email Id");
document.s.eidd.focus();
return false;
}
var b=document.s.passs.value;
if(b=="")
{
alert("Enter Password");
document.s.passs.focus();
return false;
}
var k = document.s.mobb.value;
if(k=="")
{
alert("Enter mobile number");
document.s.mobb.focus();
return false;
}
if(isNaN(k))
{
alert("Enter mobile number in numbers");
document.s.mobb.focus();
return false;
}
if(k.charAt(0)!=9)
{
alert("Enter the correct mobile no");
document.s.mobb.focus();
return false;
}
if(k.length!=10)
{
alert("Enter 10 digits");
document.s.mobb.focus();
return false;
}
if(document.s.log.selectedIndex==0)
{
alert("Select Gender");
return false;
}

var aaa=document.s.file.value;
if(aaa=="")
{
alert("Chosse your photo");
document.s.file.focus();
return false;
}
var z=document.s.dob.value;
	if(z=="")
	{
	alert ("pick date");
	document.s.dob.focus();
	return false;
	}

}



</script>

</head>
<body onload="startTime()">

<div id="templatemo_wrapper">
	<div id="templatemo_header">
   
         <!-- end of templatemo_menu -->
        
        <div class="cleaner"></div>
    </div> <!-- end of header -->
    
    <div id="templatemo_middle" align="center">
	<img src="images/ti.png" width="880" height="125">
		
		
		<div class="cleaner h10"></div>
	</div> <!-- end of templatemo_middle -->
    
    <div id="templatemo_main">
    	<div id="content_title" align="center">
		
		
		 <font color="#FFFFFF">IDSaaS</font>
		
		
        	       </div>
      <div id="templatemo_content">
	  <div class="col_allw280">
                <h3>
				
				
				
				
				
				
				
				
				
				<table width="887" height="506"><tr>
   <td width="100"></td> <td width="405"><img src="images/cloud1.JPG" width="300" height="300"></td>
		
		
    <td> 
      <form  name="form" action="use1.jsp" onSubmit="return validation()" method="post">
        <table  bgcolor="#DE325E" bordercolor="#FFFFFF" width="300" height="100">
		<tr> 
            <td>
           </td>
          </tr>
          
          <tr> 
            <td><font color="#FFFFFF" size="3" face="Times New Roman, Times, serif"><i><b> 
             EMAIL 
              ID</b></i></font> <br><input type="text" name="na" size="14"></td>
            <td><font color="#FFFFFF" size="3" face="Times New Roman, Times, serif"><i><b> 
            PASSWORD</b></i></font> 
			  <br> <input type="password" name="pass" size="14"> </td>
    
          
         
            
            <td><br><input name="submit" type="submit" class="button" value="Login" size="14"> 
            </td>
          </tr>
         
        </table>
      </form>
	<form name="s" action="userinsert.jsp" method="get" onSubmit="return valid()">
      <table width="300" height="100">
	   <tr><img src="images/line.jpg" width="320"></tr>
	  <tr><td colspan="2" align="center"><font color="#CC0033"><b>SignUp</b></font></td></tr>
        <tr> 
                      <td width="73"><font color="#CC0033">&nbsp;</font><font face="Times New Roman"  size="+1" color="#666666"><strong>Name</strong></font></td>
          <td width="145">&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="unn" placeholder="Enter your name"></td>
        </tr>
       <tr> 
          <td ><font face="Times New Roman"  size="+1" color="#666666"><strong>Your Email</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="eidd" placeholder="Enter your Email id"></td>
		  
        </tr>
          
        <tr>
          <td><font face="Times New Roman"  size="+1" color="#666666"><strong>Password</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="passs" placeholder="Enter your password"></td>
        </tr>
        <tr> 
          <td ><font face="Times New Roman"  size="+1" color="#666666"><strong>Mobile</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="mobb" placeholder="Enter your mobile numbers"></td>
        </tr>
       
		<tr> 
          <td ><font face="Times New Roman"  size="+1" color="#666666"><strong>I Am</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="log">
		  <option value="0">select sex:</option>
		  <option value="male">Male</option>
		  <option value="female">Female</option>
		  </select></td>
		  
        </tr>
		
	
		<tr> 
          <td ><font face="Times New Roman"  size="+1" color="#666666"><strong>Photo</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="file" name="file" ></td>
		  
        </tr>
		<tr>
	 <td ><font face="Times New Roman"  size="+1" color="#666666"><strong>Birthday</strong></font></td>
	    
       <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="demo1" type="text" size="20" name="dob" placeholder="choose your birthday"><a href="javascript:NewCal('demo1','ddmmyyyy')"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
		</td></tr>
		<tr> 
          <td ><font face="Times New Roman"  size="+1" color="#666666"><strong>Like Subject</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="type" size="20" name="subject" placeholder="Favourate Subject..?" ></td>
		  
        </tr>
        <tr> 
          <td></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="s" value="submit" class="button" > 
            &nbsp;&nbsp;&nbsp;  <input type="reset" name="r" value="clear" class="button"></td>
        </tr>
		 
      </table>
	 
    </form>
	</td>
	
	</tr>
	
	</table>
	<table width="887">
	<tr>
	<td width="500"></td>
	
	<td width="375"><center><a href="admin.jsp" target="_blank">Admin</a><br /><a style="font-size: 12px;" href="admin.jsp" target="_blank"></a></center>
	</td>
	
	</tr>
	
	
	
	</table>
	
	
	
	
	
	
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
    </a> </div>
  <!-- end of footer wrapper -->

</div> <!-- end of wrapper -->

</body>
</html>