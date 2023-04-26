
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
<center><h1>EMPLOYEE DETAILS</h1></center>
<table border="2">
<tr>
<th>EMP.ID</th><th>EMPLOYEE NAME</th><th>EMAIL</th><th>Gender</th><th>DOB</th><th>PhoneNo</th><th>Address</th> <th colspan="2">Action</th></tr>




<%

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from emp_reg");
while(rs.next()){
	
	String name= rs.getString("empname");
	String email= rs.getString("email");
	String gender= rs.getString("Gender");
	String dob= rs.getString("dob");
	String phonenumber= rs.getString("phoneno");
	String address= rs.getString("address");
	String empid= rs.getString("empid");
%>
<tr><td><%=empid%></td><td><%=name %></td><td><%=email%></td><td><%=gender %></td><td><%=dob%></td><td><%=phonenumber%></td><td><%=address%></td>
<td> <a href="editprofile.jsp?empid=<%=empid%>"><input type="submit" value="Update" class="btn btn-primary" ></a></td>
<td> <a href="delete.jsp?empid=<%=empid%>"><input type="submit" value="delete" class="btn btn-primary" ></a></td>
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
        <br><br><br>
        
       <footer style="text-align: center;background-color:  #2C3E50;color: white;padding: 10px">
                <h5>© 2022 All Rights Reserved </h5>
        </footer>

</body>
</html>