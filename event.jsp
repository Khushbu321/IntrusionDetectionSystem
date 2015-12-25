<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
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
<script type="text/javascript">
function validation()

{
var z=document.s1.dob.value;
	if(z=="")
	{
	alert ("pick date");
	document.s1.dob.focus();
	return false;
	}
if(document.s1.event.selectedIndex==0)
{
alert("Select Event type");
return false;
}
	var w=document.s1.p.value;
	if(w=="")
	{
	alert("Enter a place");
	document.s1.p.focus();
	return false;
	}
	var w1=document.s1.file.value;
	if(w1=="")
	{
	alert("upload photo");
	document.s1.file.focus();
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




<div style="position:absolute; left:257px; top:248px; width: 351px; height: 503px;">
  <p><a href="event.jsp"><font color="#33CC33" face="Times New Roman, Times, serif" size="+2">Create Event</font></a>
	
	
  
  <form name="s1" action="event1.jsp" onSubmit="return validation()">
              <table bgcolor="#DE325E">
                <tr>
                  <td align="center"><font color="#FFFFFF" size="+1" face="Georgia, Times New Roman, Times, serif">Date</font></td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="demo1" type="text" size="20" name="dob" placeholder="choose date?" />
                    <a href="javascript:NewCal('demo1','ddmmyyyy')"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date" /></a> 
                  </td>
                </tr>
                <tr>
                  <td align="center"><font color="#FFFFFF" size="+1" face="Georgia, Times New Roman, Times, serif">EventType</font></td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;
                    <select name="event">
                      <option value="0">Choose EventType</option>
                      <option value="birthday">Birthday</option>
                      <option value="reminder">Reminder</option>
                    </select></td>
                </tr>
                <tr>
                  <td align="center"><font color="#FFFFFF" size="+1" face="Georgia, Times New Roman, Times, serif">Place</font></td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name="p" /></td>
                </tr>
                \ 
                <tr>
                  <td align="center"><font color="#FFFFFF" size="+1" face="Georgia, Times New Roman, Times, serif">Details</font></td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;
                    <textarea name="p1" rows="3" placeholder="Add some Details"></textarea></td>
                </tr>
                <tr>
                  <td align="center"><font color="#FFFFFF" size="+1" face="Georgia, Times New Roman, Times, serif">Related Image</font></td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="file" size="5" name="file" /></td>
                </tr>
                <tr>
                  <td></td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input name="submit" type="submit" value="submit" />
                    <input name="reset" type="reset" value="clear" /></td>
                </tr>
              </table>
            </form>
	
	<table> 
<%
String a=(String)session.getAttribute("a");
String w=(String)session.getAttribute("w");

%>
</table>
</div>
 <img src="use3.jsp" width="135" height="155"> <br>
          <font color="#00CC66"><b><font size="+1">Welcome:</font></b></font>&nbsp;<font color="#00000" face="Times New Roman, Times, serif" size="2.5"><i>
          <font size="2"><%=a%></font>
          </i></font></h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          <form name="s" action="search2.jsp">
 <table><tr><td><font color="#33CCFF" face="Times New Roman, Times, serif" size="4"><i><b>
 Search</b></i></font>
 <input type="text" name="v" size="14" placeholder="Search friends"></td></tr></table></form>
 <br>
  &nbsp;&nbsp;<a href="f.jsp"><font color="#00CC66"><b>Friends</b></font></a><br>
  &nbsp;&nbsp;<a href="fr2.jsp"><font color="#00CC66"><b>Friends Request</b></font></a>
  <br>
<font color="#CC3366">&nbsp;&nbsp;<b>FAVOURITES</b></font><br>
&nbsp;&nbsp;<a href="gal.jsp"><font color="#009933"><b>My Gallery</b></font></a><br>
&nbsp;&nbsp;<a href="use2.jsp"><font color="#009933"><b>Add Messages</b></font></a><br>

&nbsp;&nbsp;<a href="add.jsp"><font color="#009933"><b>Add Photos</b></font></a><br>

&nbsp;&nbsp;<a href="1.jsp"><font color="#FF3300" face="Times New Roman, Times, serif"><strong>
 LOGOUT</strong></font></a>
<div style="position:absolute; left:783px; top:252px; width: 248px; height: 318px;"> 
 

 <br>

 &nbsp;&nbsp;<a href="event.jsp"><font color="#009933" size="+1"><b>Create Event</b></font></a><br>
&nbsp;&nbsp;<a href="sevent.jsp"><font color="#009933" size="+1"><b>Search Event</b></font></a><br> 
&nbsp;&nbsp;<a href="use2.jsp"><font color="#009933" size="+1"><b>Home</b></font></a><br>
&nbsp;&nbsp;<a href="intruder.jsp"><font color="#009933" size="+1"><b>Intruders</b></font></a><br>
&nbsp;&nbsp;<a href="hi.jsp"><font color="#009933" size="+1"><b>Hacker Intruders</b></font></a><br>

<%
java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
	 Date date = new SimpleDateFormat("dd/MM/yyyy").parse(strDateNew1);
String a2= new SimpleDateFormat("yyyy-MM-dd").format(date);
	 //String d="facebook";
	 String m6=null;
try 
{

Class.forName("com.mysql.jdbc.Driver");

Connection con11 = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");

PreparedStatement stmt11 = con11.prepareStatement("select details from event where date='"+a2+"'");

ResultSet rs11 = stmt11.executeQuery();

while(rs11.next()) {
m6=rs11.getString(1);
 %>
 <table><tr><td><font face="Georgia, Times New Roman, Times, serif" color="red" size="2"><b>Today <%=m6%></b></font></td></tr>
 <tr><td><img src="h1.jsp?<%=a2%>" height="55" width="55"></font></td></tr></table>
  <% 
}


}
catch(Exception e33)
{
out.println(e33.getMessage());

}
%>
</div>













</h3>
                
                            
               
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
