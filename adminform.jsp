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
    	<div id="content_title" align="center">AdminRegistration Form
        	       </div>
      <div id="templatemo_content">
	  <div class="col_allw280">
                <h3></h3>
                
              <p><em></em></p>
               
            </div>
        
<div class="col_allw280">
       
		
		
		
		<%
		
		try {

Class.forName("com.mysql.jdbc.Driver");

Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");

PreparedStatement stmt1 = con1.prepareStatement("select name,msg1,id1 from message where social='"+w+"'");

ResultSet rs1 = stmt1.executeQuery();

while(rs1.next()) {
 q=rs1.getString(1);
    r=rs1.getString(2);
	s=rs1.getString(3);
%><table height="100" width="150">
 <tr><td><img src="f1.jsp?<%=s%>" height="55" width="55"></td><td><font size="+1" color="#006699"><b><%=q%></b></font>
<font size="1" color="#663333">shared </font><font size="1" color="#006699"><b>a message....></font> <font size="1" color="#663333">"<%=r%>"</font></b></td></tr>
  </table>
<%
}

}
catch(Exception e3)
{
out.println(e3.getMessage());

}
%>
</table>
</div>

&nbsp;&nbsp; <img src="use3.jsp" width="135" height="155"> <br>
 <font color="#00CC66" size="+1">Welcome:</font>&nbsp;<font color="#00000" face="Times New Roman, Times, serif" size="2.5"><i><%=a%></i></font></h2>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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

&nbsp;&nbsp;<a href="logout.jsp"><font color="#FF3300" face="Times New Roman, Times, serif"><strong>
 LOGOUT</strong></font></a>
 <div style="position:absolute; left:794px; top:270px; width: 248px; height: 318px;">
 
 

 
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
	 String m6=null; String m7=null;
try 
{

Class.forName("com.mysql.jdbc.Driver");

Connection con11 = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");

PreparedStatement stmt11 = con11.prepareStatement("select details,photo from event where date='"+a2+"'");

ResultSet rs11 = stmt11.executeQuery();

while(rs11.next()) {
m6=rs11.getString(1);
m7=rs11.getString(2);
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
		
		
		
		
		
		
		
		
		
		
		
		
		
		
            <p><a href="use2.jsp"><font color="#33CC33" face="Times New Roman, Times, serif" size="+2">Add 
              Mes</font></a><a href="use2.jsp"><font color="#33CC33" face="Times New Roman, Times, serif" size="+2">sages</font></a> 
              <a href="add.jsp"><font color="#33CC33" face="Times New Roman, Times, serif" size="+2">Add 
              Photos</font></a></p>
			  <form name="s1" action="post1.jsp" onSubmit="return validation()">
            
	
            <table bgcolor="#666666">
              <tr> 
                <td width="0"></td>
                <td width="0"></td>
                <td width="315"><textarea rows="4" cols="40" placeholder="What's on your mind?" name="msg"></textarea></td>
              </tr>
              <tr> 
                <td bgcolor="#CCCCCC"></td>
                <td bgcolor="#CCCCCC"></td>
                <td> <input name="submit" type="submit" value="  post   " /></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            
	</table> </form>
	
<%
String a=(String)session.getAttribute("a");
String w=(String)session.getAttribute("w");
String s1=(String)session.getAttribute("s");

String m=null,n=null,o=null,p=null,q=null,r=null,s=null,t=null;
try {

Class.forName("com.mysql.jdbc.Driver");

Connection con5 = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");

PreparedStatement stmt5 = con5.prepareStatement("select name,msg,id1,id from photos where social='"+w+"'");

ResultSet rs5 = stmt5.executeQuery();

while(rs5.next()) {
 m=rs5.getString(1);
 n=rs5.getString(2);
  o=rs5.getString(3);
  p=rs5.getString(4);
  
	}
}
catch(Exception e3)
{
out.println(e3.getMessage());

}


	
  %>
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			  










 







                
                            
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
    
    <div id="templatemo_footer">
    	
        <a href="#">Chennai Sunday </a> | Designed by <a href="http://www.templatemo.com" target="_parent">CS0121</a>
        
    </div> <!-- end of footer wrapper -->

</div> <!-- end of wrapper -->

</body>
</html>



























