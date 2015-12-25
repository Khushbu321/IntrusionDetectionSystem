<%@ page import="java.sql.*" %>
<%
String a=request.getParameter("name");
String b=request.getParameter("pass");
String uid=null,uin=null;
try
{

Class.forName("com.mysql.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "admin");
PreparedStatement ps=conn.prepareStatement("select * from userdetails where username='"+a+"' && password='"+b+"'");
ResultSet rs=ps.executeQuery();
if(rs.next())
{
uid=rs.getString("uid");
session.setAttribute("uid1",uid);
uin=rs.getString("username");
session.setAttribute("uin1",uin);
//response.sendRedirect("userfront.jsp");
}
else
{
out.println("Enter correct username and password");

}

}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
