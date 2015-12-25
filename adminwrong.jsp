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

}



</script>
<script language="javascript" type="text/javascript" src="datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com 

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
      <form  name="form" action="adminlogin.jsp" onSubmit="return validation()" method="post">
        <table  bgcolor="#DE325E" bordercolor="#FFFFFF" width="300" height="100">
		<tr> 
            <td>
           </td>
          </tr>
          
          <tr> 
            <td><font color="#FFFFFF" size="3" face="Times New Roman, Times, serif"><i><b> 
            Admin Name</b></i></font> <br><input type="text" name="name" size="14"></td>
            <td><font color="#FFFFFF" size="3" face="Times New Roman, Times, serif"><i><b> 
            Password</b></i></font> 
			  <br> <input type="password" name="pass" size="14"> </td>
    
          
         
            
            <td><br><input name="submit" type="submit" class="button" value="Login" size="14"> 
            </td>
          </tr>
         
        </table>
		          <font size="2" color="#CC0033">Enter correct AdminName and Password</font> 
                </form>
	
        </tr>
		
      </table>
	 
    </form>
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
                
    </div> <!-- end of footer wrapper -->

</div> <!-- end of wrapper -->

</body>
</html>