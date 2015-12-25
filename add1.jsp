<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%
FileInputStream fis;
String msg=request.getParameter("msg");
String msg1=request.getParameter("msg1");
String a=(String)session.getAttribute("a");
String b=null,c=null;
String f1="\\apache-tomcat-6.0.18";
String f2="\\webapps";
String f3="\\project";
String f4="\\images\\";
String z = "D:\\"+f1+f2+f3+f4+msg1;
String s="facebook";
String w=(String)session.getAttribute("w");
File image=new File(z);
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
		


	
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into photos(id1,name,photo,msg,social) values(?,?,?,?,'"+w+"')");
		ps.setString(1,b);
ps.setString(2,c);

fis=new FileInputStream(image);
ps.setBinaryStream(3, (InputStream)fis, (int)(image.length()));

ps.setString(4,msg);
ps.executeUpdate();

response.sendRedirect("use2.jsp?success");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>