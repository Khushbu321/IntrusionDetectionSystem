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


<script language="javascript" type="text/javascript" src="datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com 

</script>
<script language="javascript" type="text/javascript">


function validation()
{
var name=document.form.subj.value;

if(name=="")
{
alert("please enter Subject Name");
document.form.subj.focus();
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
   <td width="100"></td> <td width="405"><img src="images/diagram.bmp" width="300" height="300"></td>
		
		
    <td> 
      <form  name="form" action="3.jsp" onSubmit="return validation()" method="post">
        <table  bgcolor="#DE325E" bordercolor="#FFFFFF" width="300" height="100">
		<tr> 
            <td width="156">
           </td>
          </tr>
          
          <tr> 
            <td><font color="#FFFFFF" size="3" face="Times New Roman, Times, serif"><i><b> 
            Enter Your Favourate Subject Here
              </b></i></font> <br><input type="text" name="subj" size="14"></td>                            
            
            <td width="132"><br><input name="submit" type="submit" class="button" value="Login" size="14"> 
            </td>
          </tr>
        
        </table>
      </form>
	<form name="s" action="userinsert.jsp" method="get" onSubmit="return valid()">
      <table width="300" height="100">
	   <tr><img src="images/line.jpg" width="320"></tr>
	  
          
        
		
	
		
        <tr>
   <td width="100"></td> <td width="405"><img src="images/fingerprint.jpg" width="300" height="300"></td>
		
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