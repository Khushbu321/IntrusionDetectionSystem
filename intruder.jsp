﻿
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

<div style="position:absolute; left:327px; top:289px;">




<table align="center" height="200" width="150">
           <tr align="center"><font color="#CC3399">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Intruders</b></font></tr>
		    <tr bgcolor="#DE325E">  
			<td align="center"><font color="#FFFFFF" face="Georgia, Times New Roman, Times, serif" size="+1">Photo</font></td>
			<td align="center"><font color="#FFFFFF" face="Georgia, Times New Roman, Times, serif" size="+1">Name</font></td>
              <td align="center"><font face="Georgia, Times New Roman, Times, serif" color="#FFFFFF" size="+1">EmailId</font></td>
              <td align="center"><font face="Georgia, Times New Roman, Times, serif" color="#FFFFFF" size="+1">Gender</font></td>
<%
String a=(String)session.getAttribute("a");

String zz=(String)session.getAttribute("zz");
Connection con1=null;

try {

Class.forName("com.mysql.jdbc.Driver");

 con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");


PreparedStatement stmt = con1.prepareStatement("select id,name,email,gender,photo,id1 from intru where id1='"+zz+"'");

ResultSet rs = stmt.executeQuery();

while(rs.next()) 
{
String nam=rs.getString(1);
String name=rs.getString(2);
String name1=rs.getString(3);
String name2=rs.getString(4);
String name3=rs.getString(5);
String name4=rs.getString(6);


%>
 <tr bgcolor="#FF9933"> 
              <td   align="center"> 
               <img src="search.jsp?<%=name%>" height="75" width="75"></td><td><font face="Georgia, Times New Roman, Times, serif" color="#FFFFFF"><font  size="2"><b><%=name%></b></font>
                </font></td><td><font color="#FFFFFF"><font face="Georgia, Times New Roman, Times, serif"  size="2"><b><%=name1%></b></font>
                </font></td><td><font color="#FFFFFF"><font face="Georgia, Times New Roman, Times, serif"  size="2"><b><%=name2%></b></font>
                </font></td>
              
            </tr>







<%

}
}
catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
</table>


</div>

<img src="use3.jsp" width="153" height="169"> 
 <br>
 <font size="+1" color="#00CC66"><b>Welcome:</b></font>&nbsp;<font color="#00000" face="Times New Roman, Times, serif" size="2.5"><i><%=a%></i></font></h2>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;
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
&nbsp;&nbsp;<a href="editprofile.jsp"><font color="#009933"><b>EditProfiles</b></font></a><br>


&nbsp;&nbsp;<a href="1.jsp"><font color="#FF3300" face="Times New Roman, Times, serif"><strong>
 LOGOUT</strong></font></a>
 <div style="position:absolute; left:781px; top:256px; width: 248px; height: 318px;">

 

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
 <table><tr><td><font color="red" size="2"><b>Today <%=m6%></b></font></td></tr>
 <tr><td><img src="h1.jsp?<%=a2%>" height="55" width="55"></font></td></tr>
 </table>
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
