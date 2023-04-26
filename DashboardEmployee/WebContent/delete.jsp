<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String empid=request.getParameter("empid");
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","");
	Statement st=con.createStatement();
	 st.executeUpdate("delete from emp_reg where empid='"+empid+"' ");
	 %>
	 <h2>Employee deleted successfully</h2>
	 <%
	// response.sendRedirect("index.jsp?Delete Sucessfully");
	
	
}
catch(Exception e)
{
	System.out.println(e);
}
	
	%>
</body>
</html>