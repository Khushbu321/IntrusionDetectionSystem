<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>

<% 
Blob image = null;

Connection con = null;

byte[ ] imgData = null ;

Statement stmt = null;
String w=(String)session.getAttribute("w");
ResultSet rs = null;
String a=(String)session.getAttribute("a");
String b=(String)session.getAttribute("b");
try {

Class.forName("com.mysql.jdbc.Driver");

con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");

stmt = con.createStatement();

rs = stmt.executeQuery("select photo from userdetails where email='"+a+"' AND password='"+b+"' AND social='"+w+"'");

while(rs.next()) {

image = rs.getBlob(1);

imgData = image.getBytes(1,(int)image.length());

} 

response.setContentType("image/gif");

OutputStream o = response.getOutputStream();

o.write(imgData);

o.flush();

o.close();

} catch (Exception e) {

out.println("Unable To Display image");

out.println("Image Display Error=" + e.getMessage());

return;

} finally {

try {



stmt.close();

con.close();

} catch (SQLException e) {

e.printStackTrace();

}

}

%> 