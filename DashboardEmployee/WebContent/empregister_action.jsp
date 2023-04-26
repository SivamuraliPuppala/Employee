<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
String s2=request.getParameter("password");
String s3=request.getParameter("email");
String s4=request.getParameter("Gender");
String s5=request.getParameter("dob");
String s6=request.getParameter("phoneno");
String s7=request.getParameter("address");
int status=0;

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into emp_reg (empname,password,email,Gender,dob,phoneno,address,status)values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','0')");

if(i>0){
	out.println("Added successfully");
	response.sendRedirect("index.jsp");
}
else{
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