<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,java.text.SimpleDateFormat,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<html>
<head>
</head>
<body>

<%
Thread.sleep(100);
ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("\\File\\");
		String paramname=null;
		String name=null,datafile=null;
		
		  File file1 = null;
		 
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				if(paramname.equalsIgnoreCase("uid"))
				{
					uid=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("cat"))
				{
					cat=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("city"))
				{
					city=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("fm"))
				{
					fm=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("to"))
				{
					to=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("det"))
				{
					det=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("dis"))
				{
					dis=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("date"))
				{
					date=multi.getParameter(paramname);
				}
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			resumename = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("\\File\\"+resumename);
			file1 = new File(fPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
		}		
	}
	        FileInputStream fs1 = null;
            
			Connection con=databasecon.getconnection(); 

			PreparedStatement ps=con.prepareStatement("INSERT INTO upload VALUES(?,?,?,?,?,?,?,?,?)");
			
       	
       			ps.setString(1,uid);
       			ps.setString(2,cat);
				ps.setString(3,city);
				ps.setString(4,fm);
				ps.setString(5,to);
				ps.setString(6,det);
				ps.setString(7,dis);
				ps.setString(8,date);
				ps.setString(9,resumename);
				
				
       if(f == 0)
			ps.setObject(9,null);
		else if(f == 1)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(9,fs1,fs1.available());
		}	
			int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("upload.jsp?message=success");
			}
			else
			{
				response.sendRedirect("upload.jsp?message=fail");
			}
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</body>
</html>