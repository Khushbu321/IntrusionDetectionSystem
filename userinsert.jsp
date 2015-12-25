<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>
<%
FileInputStream fis;
String a=request.getParameter("unn");
String b=request.getParameter("eidd");
String c=request.getParameter("passs");
String d=request.getParameter("mobb");
String e=request.getParameter("log");
String f=request.getParameter("file");
String g=request.getParameter("dob");
String h=request.getParameter("subject");

String f1="\\apache-tomcat-6.0.18";
String f2="\\webapps";
String f3="\\project";
String f4="\\images\\";
String z = "D:\\"+f1+f2+f3+f4+f;
int aaa=(int) (Math.random() * 100);
int bbb=aaa*5;
File image=new File(z);

java.util.Date now = new java.util.Date();

Date date = new SimpleDateFormat("dd-MM-yyyy").parse(g);
String a2= new SimpleDateFormat("yyyy-MM-dd").format(date);
PreparedStatement ps = null;

	ResultSet rs = null;
		
String s="facebook";

	
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into userdetails(name,email,password,mobile,gender,photo,birthday,subject,social,random) values(?,?,?,?,?,?,?,?,?,'"+bbb+"')");
		ps.setString(1,a);
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,e);
fis=new FileInputStream(image);
ps.setBinaryStream(6, (InputStream)fis, (int)(image.length()));

ps.setString(7,a2);
ps.setString(8,h);
ps.setString(9,s);
ps.executeUpdate();

response.sendRedirect("1.jsp?success");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
</body>
</html>
