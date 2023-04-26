<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>

<body>

<%
String empid=null, name=null, email=null,gender=null,dob=null,role=null,phno=null,address=null,image=null;

try
{
         empid=request.getParameter("empid");
         System.out.println(empid);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from  emp_reg where empid='"+empid+"'");

while(rs.next())
{

	empid=rs.getString("empid");
	name=rs.getString("empname");
	email=rs.getString("email");
	gender=rs.getString("Gender");
	dob=rs.getString("dob");
	phno=rs.getString("phoneno"); 
     address=rs.getString("address");
     
}}
catch(Exception e){
	e.printStackTrace();
}



%>
<div class="row"> 
 
        
           <div class="col-sm-4"></div>
             
    <div class="col-sm-4">
    <h3>Update Employee  profile</h3>
    <form action="editprofile_action.jsp" method="post" target="_parent">
    
     <div class="form-group"> 
    <label style="margin-top:5px;">Employee id</label>
     <input type="text" placeholder="ID" name="empid" value="<%=empid%>" class="form-control" required>
       </div>
    
     <div class="form-group"> 
    <label style="margin-top:5px;">Name</label>
     <input type="text" placeholder="Name" name="empname" value="<%=name%>" class="form-control" required>
       </div>
        <div class="form-group">
              <label style="margin-top:5px;">Email</label>
      <input type="email" placeholder="Email" name="email" value="<%=email%>" class="form-control" required>
        </div>
         <div class="form-group">
        <label>Gender</label>  
       <input type="text" name="Gender"  checked="checked" value="<%=gender%>" class="form-control">
            </div>
       <div class="form-group">
        <label style="margin-top:5px;">DateofBirth</label>
       <input type="date" placeholder="date of birth" name="dob" value="<%=dob%>" class="form-control" required>
       </div>
				 <div class="form-group">
				<label style="margin-top:4px;">Phone Number</label>
        <input type="text" placeholder="phone number" name="phoneno" value="<%=phno%>"  class="form-control" required>
        </div>
         <div class="form-group">
       <label style="margin-top:2px;">Address</label>
        <input type="text" placeholder="Address" name="address" value="<%=address%>" class="form-control" required>
       </div>
       <input type="submit"  class="btn btn-primary" value="Update"> <input type="reset"  class="btn btn-primary" value="Cancel">
       
    
    </form>
     
    </div>
    </div>
</body>
</html>