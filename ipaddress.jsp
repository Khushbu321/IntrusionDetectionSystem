<%@ page  language="java" import="java.io.*,java.util.*, javax.servlet.*"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>

<html>
<head>
<title>Intrution Detection</title>
</head>

<body>

<%
String zz=(String)session.getAttribute("zz1");
 String ipAddress=request.getRemoteAddr();
 Date date = new Date();
   String da=date.toString();

%>



<table>

<%
final String properties1= "os.name";
final String properties2="java.runtime.name";
final String properties3="java.runtime.version";
final String properties4="sun.desktop";

String pvalue1 = System.getProperty(properties1);
String pvalue2 = System.getProperty(properties2);
String pvalue3 = System.getProperty(properties3);
String pvalue4 = System.getProperty(properties4);
%>

<%


Connection c2=null;
PreparedStatement ps=null;

try
{
c2=databasecon.getconnection();
ps=c2.prepareStatement("insert into ipadd (id,ipadd,time,os,version,desktop) values (?,?,?,?,?,?)");
ps.setString(1,zz);
ps.setString(2,ipAddress);
ps.setString(3,da);
ps.setString(4,pvalue1);
ps.setString(5,pvalue2);
ps.setString(6,pvalue3);


ps.executeUpdate();

response.sendRedirect("wrong.jsp");

}
catch(Exception e1)
{
out.print(e1);
}








%>


</body>
</html>