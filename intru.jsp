<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>




<table>
<%
String intrud=(String)session.getAttribute("intruder");

String a=(String)session.getAttribute("a");






String n=null,n1=null,n2=null,n3=null,n4=null;
Connection con1=null;
Connection c2=null;
ResultSet rs=null;
PreparedStatement ps=null;
PreparedStatement st1=null;




try {

Class.forName("com.mysql.jdbc.Driver");

 con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");

PreparedStatement st = con1.prepareStatement("select uid,name,email,gender,photo from userdetails where email='"+a+"'");

ResultSet rs1 = st.executeQuery();

while(rs1.next()) 
{
 n=rs1.getString(1);
 n1=rs1.getString(2);
 n2=rs1.getString(3);
 n3=rs1.getString(4);
 n4=rs1.getString(5);



try
{
c2=databasecon.getconnection();
ps=c2.prepareStatement("insert into intru (id,name,email,gender,photo,id1) values (?,?,?,?,?,?)");
ps.setString(1,n);
ps.setString(2,n1);
ps.setString(3,n2);
ps.setString(4,n3);
ps.setString(5,n4);
ps.setString(6,intrud);


ps.executeUpdate();

//out.print(f1);
response.sendRedirect("fr7.jsp");
}
catch(Exception e1)
{
out.print(e1);
}





}

}
catch(Exception e3)
{
out.println(e3.getMessage());

}


%>