<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%
String a=request.getParameter("subj");
String zz=(String)session.getAttribute("zz");
session.setAttribute("zz1",zz);
String w=(String)session.getAttribute("w");




PreparedStatement ps = null;
	ResultSet rs = null;
	String userid1=null;	

	
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("select email,password,social,uid from userdetails where subject='"+a+"' AND uid='"+zz+"'");
		rs = ps.executeQuery();
		
    if(rs.next())
		{
		userid1=rs.getString(1);
		
				
		response.sendRedirect("intimate.jsp");
		}
		else
		{
			response.sendRedirect("ipaddress.jsp");
		}
		
		
		}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>