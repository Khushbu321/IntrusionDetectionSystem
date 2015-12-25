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
</head>
<body onload="startTime()">

<div id="templatemo_wrapper"> 
	<div id="templatemo_header">
   
         <!-- end of templatemo_menu -->
        
        <div class="cleaner"></div>
    </div> <!-- end of header --><!-- 2 //////////// -->
    
    <div id="templatemo_middle" align="center"><!-- 4-->
	<img src="images/ti.png" width="880" height="125">
		
		
		<div class="cleaner h10"></div><!-- 5 /////////////////////-->
	</div> <!-- end of templatemo_middle --><!-- 4  //////////////-->
    
    <div id="templatemo_main"><!-- 1---------------------------------------------------------------------------------------------------->
    	<div id="content_title" align="center">
		
		 <font color="#FFFFFF">IDSaaS</font>
        	       </div>
      <div id="templatemo_content">
	  <div class="col_allw280">
                <h3>
<%
FileInputStream fis;
String s1="facebook";
String g=request.getParameter("dob");

String b=request.getParameter("event");
String c=request.getParameter("p");
String d=request.getParameter("p1");

String f=request.getParameter("file");

String f1="\\apache-tomcat-6.0.18";
String f2="\\webapps";
String f3="\\project";
String f4="\\images\\";
String z = "D:\\"+f1+f2+f3+f4+f;

File image=new File(z);

java.util.Date now = new java.util.Date();

Date date = new SimpleDateFormat("dd-MM-yyyy").parse(g);
String a2= new SimpleDateFormat("yyyy-MM-dd").format(date);
PreparedStatement ps = null;

	ResultSet rs = null;
		

	
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into event(date,event,place,details,photo,social) values(?,?,?,?,?,'"+s1+"')");
		ps.setString(1,a2);
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);

fis=new FileInputStream(image);
ps.setBinaryStream(5, (InputStream)fis, (int)(image.length()));


ps.executeUpdate();

response.sendRedirect("event.jsp?success");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
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
        </div>
		<!-- end of templatemo_content -->
    </div> <!-- end of templatemo_main -->
    
    <div id="templatemo_footer"> <a href="#"><font face="Georgia, Times New Roman, Times, serif" size="3"></font>
                
    </div> <!-- end of footer wrapper -->

</div> <!-- end of wrapper -->

</body>
</html>
