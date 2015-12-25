<%@ page import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

</head>

<body>
<% 
String n1=request.getParameter("unn");
String un1=request.getParameter("eidd");
String e1=request.getParameter("passs");
String d1=request.getParameter("mobb");
//String add1=request.getParameter("file");
String mno1=request.getParameter("dob");
String cy=request.getParameter("subject");


String zz=(String)session.getAttribute("zz");
Connection conn3=null;
PreparedStatement pstmt1=null;

try
{

conn3=databasecon.getconnection();
pstmt1 = conn3.prepareStatement ("update userdetails set name='"+n1+"',email='"+un1+"',password='"+e1+"',mobile='"+d1+"',birthday='"+mno1+"',subject='"+cy+"' where uid='"+zz+"'");

int x=pstmt1.executeUpdate();
response.sendRedirect("use2.jsp");
}
catch(Exception e)
{
out.println(e.getMessage());
}





%>









</body>
</html>
