<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%
String w=(String)session.getAttribute("w");
String msg=request.getParameter("msg");
String a=(String)session.getAttribute("a");
String b=null,c=null;
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


PreparedStatement ps = null;

	ResultSet rs = null;
		
String s="facebook";

	
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into message(id1,msg1,name,social) values(?,?,?,'"+w+"')");
		ps.setString(1,b);
ps.setString(2,msg);

ps.setString(3,c);
ps.executeUpdate();

response.sendRedirect("use2.jsp?sucess");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>