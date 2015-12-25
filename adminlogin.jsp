<%@ page import="java.sql.*" %>
<%
String a=request.getParameter("name");
out.print(a);
String b=request.getParameter("pass");
out.print(b);

String uid=null,uin=null;
try
{

Class.forName("com.mysql.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "admin");
PreparedStatement ps=conn.prepareStatement("select * from admin where name='"+a+"' && password='"+b+"'");
ResultSet rs=ps.executeQuery();
if(rs.next())
{

response.sendRedirect("adminfront.jsp");
}
else
{
response.sendRedirect("adminwrong.jsp");

}

}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
