<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>
<%
String w=(String)session.getAttribute("w");
String a=(String)session.getAttribute("a");
String id=request.getQueryString();
String b=null,c=null,d=null,e=null;
try {

Class.forName("com.mysql.jdbc.Driver");

Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");

PreparedStatement stmt1 = con1.prepareStatement("select uid,name from userdetails where email='"+a+"' AND social='"+w+"'");

ResultSet rs1 = stmt1.executeQuery();

while(rs1.next()) {
 b=rs1.getString(1);
 c=rs1.getString(2);
}

}
catch(Exception e3)
{
out.println(e3.getMessage());

}

try {

Class.forName("com.mysql.jdbc.Driver");

Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");

PreparedStatement stmt2 = con2.prepareStatement("select uid,name from userdetails where uid='"+id+"' AND social='"+w+"'");

ResultSet rs2 = stmt2.executeQuery();

while(rs2.next()) {
d=rs2.getString(1);
e=rs2.getString(2);
}
session.setAttribute("name",e);
}
catch(Exception e2)
{
out.println(e2.getMessage());

}


String g="waiting";
PreparedStatement ps = null;

	ResultSet rs = null;
		

String s="facebook";
	
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into friends(sendid,sendid1,recid,recid1,status,social) values(?,?,?,?,'"+g+"','"+w+"')");
		ps.setString(1,b);
ps.setString(2,c);
ps.setString(3,d);
ps.setString(4,e);


ps.executeUpdate();

response.sendRedirect("use2.jsp?success");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
</body>
</html>
