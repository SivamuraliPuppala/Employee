
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
            
</head>
<body>

     
<table class="table table-striped" border="2">
<tr>
<th>EMP.ID</th><th>EMPLOYEE NAME</th><th>EMAIL</th><th>Gender</th><th>DOB</th><th>PhoneNo</th><th>Address</th><th>Status</th></tr>




<%

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from emp_reg where status='1' ");
while(rs.next()){
	
	String status=rs.getString("status");
	
	String name= rs.getString("empname");
	String email= rs.getString("email");
	String gender= rs.getString("Gender"); 
	String dob= rs.getString("dob");
	String phonenumber= rs.getString("phoneno");
	String address= rs.getString("address");
	
	String id= rs.getString("empid");
%>
<tr><td><%=id%></td><td><%=name %></td><td><%=email%></td><td><%=gender %></td><td><%=dob%></td><td><%=phonenumber%></td><td><%=address%></td><td>Accepted</td>
</tr>


<%	




}


%>




<%

	}
catch(Exception e){
	e.printStackTrace();
	
}
%>
</table>
</cenetr>
       
</body>
</html>