
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String s1=request.getParameter("empname");
String s2=request.getParameter("email");
String s3=request.getParameter("Gender");
String s4=request.getParameter("dob");
String s5=request.getParameter("phoneno");
String s6=request.getParameter("address");
String empid=request.getParameter("empid");
   System.out.println(empid+""+s1);  

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","");
	Statement stmt=con.createStatement();
	String sql="update emp_reg set empname='"+s1+"',email='"+s2+"',Gender='"+s3+"',dob='"+s4+"',phoneno='"+s5+"',address='"+s6+"' where empid='"+empid+"' ";
    System.out.println(sql);
    int i=stmt.executeUpdate(sql);
	if(i>0)
	{
		out.println("<h2>successfully Updated</h2>");
		//response.sendRedirect("adminUpdatedEmployee.jsp");
	}
	else
	{
		out.println("connection error");
	}

con.close();
}
   
catch(Exception e)
{
e.printStackTrace();	
}



 

%>
</body>
</html>