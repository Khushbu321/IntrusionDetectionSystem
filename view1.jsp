<%@ page  import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Files Handling</title> 
<meta name="keywords" content="pink round theme, web design, free css template," /> 
<meta name="description" content="Pink Round Theme, free CSS template, web design" /> 
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />


<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />




</head>
<body>

<div id="templatemo_wrapper">
	
    <div id="templatemo_header">
    	
        <div id="site_title"></div>
        
        
        
        
        <div id="templatemo_menu">
            <ul>
                <li><a href="index.html" class="current">Home</a></li>
                <li><a href="mba.jsp">Upload</a></li>
                <li><a href="view1.jsp">Download</a></li>
                <li class="last"><a href="index.html">Logout</a></li>            </ul>    	
        </div> <!-- end of templatemo_menu -->
        
        <div class="cleaner"></div>
    </div> <!-- end of header -->
    
    <div id="templatemo_middle">
	 <h2>File Upload and Download Project</h2>
    	<div id="middle_right">
        	<h2></h2>
          <p></p>
        </div>
		
		
		<div class="cleaner h10"></div>
	</div> <!-- end of templatemo_middle -->
    
    <div id="templatemo_main">
    	<div id="content_title" align="center">Total Files 
        	       </div>
      <div id="templatemo_content">
	  <div class="col_allw280">
                <h3></h3>
                
              <p><em></em></p>
               
            </div>
        
<div class="col_allw280">
                <h3><form name="medical" action="#" method="post" onsubmit="return valid()">
  <table align="center" bgcolor="#DE325E" height="301" width="400" cellpadding="4" cellspacing="4">
 <tr> 
<td>File name</td>
<td>date</td>
<td>Size</td>
<td>Download</td>
</tr>
<%
String id=null;
String a=null;
String b=null;
String c=null;
try
{
Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");
PreparedStatement ps=con.prepareStatement("select * from students");
ResultSet rs=ps.executeQuery();
while (rs.next())
{
id=rs.getString(1);
a=rs.getString(2);
b=rs.getString(3);
c=rs.getString(4);
%>
<tr bgcolor="#FFFFFF">
<td><%=a%></td>
<td><%=b%></td>
<td><%=c%></td>
<td><a href="downloadfile.jsp?<%=id%>">Download</a></td>
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
</form></h3>                       
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