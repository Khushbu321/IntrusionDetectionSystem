<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%
String a=request.getParameter("na");
String b=request.getParameter("pass");
String s=request.getParameter("na1");
PreparedStatement ps = null;
	ResultSet rs = null;
	String userid=null;	

	String w=null,zz=null;
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("select email,password,social,uid from userdetails where email='"+a+"' AND password='"+b+"'");
		rs = ps.executeQuery();
		
    if(rs.next())
		{
		userid=rs.getString(1);
		w=rs.getString(3);
		zz=rs.getString(4);
		
		session.setAttribute("zz",zz);
		session.setAttribute("w",w);
				
		response.sendRedirect("2.jsp");
		}
		else
		{
		response.sendRedirect("11.jsp");
		//out.println("enter correct user name and password");
		}
		session.setAttribute("a",a);
		session.setAttribute("b",b);
		}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>