<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<%
String a=request.getParameter("nam");
String b=request.getParameter("date");
String fn=request.getParameter("datafile");
String path="D:\\apache-tomcat-6.0.18\\webapps\\project1\\file\\";
String fil=path+fn;
File ff=new File(fil);
 double size=ff.length();
		  double  size1=size/1024;
		  double size2=Math.round(size1*100.0)/100.0;
		  String size3=Double.toString(size2);
		  session.setAttribute("filesize",size3);
FileInputStream fis = null;
File image=new File(fil);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");
PreparedStatement ps=con.prepareStatement("insert into students (name,date,size,file) values(?,?,?,?)");
ps.setString(1,a);
ps.setString(2,b);
ps.setString(3,size3);

fis=new FileInputStream(image);
ps.setBinaryStream(4,(InputStream)fis,(int)(image.length()));
ps.executeUpdate();
response.sendRedirect("thanks.jsp");
}
catch(Exception e1)
{

out.println(e1.getMessage());
}
%>

