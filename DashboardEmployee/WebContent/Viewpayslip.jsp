<%@page import="Action.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body><br><br>
    <div class="container">
        <table class="table table-bordered">
            <thead>
                <tr style="background-color:rgb(44, 126, 194);color:white;">
  
<th>Employee-ID</th><th>Employee-NAME</th><th>Employee-DESCRIPTION</th><th>Employee-Payslip</th></tr>

</thead>
<%
try
{
	
	String empname=session.getAttribute("empname").toString();
	
	Connection con = Dbconnection.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from fileupload where ename='"+empname+"'");
	
	while(rs.next())
{		
		
        String eid=rs.getString("eid");
		String ename=rs.getString("ename");
		String edescription=rs.getString("edescription");
		String epayslip=rs.getString("epayslip");
		
		
		 %>
<tbody>
<tr><td><%=eid%></td><td><%=ename%></td><td><%=edescription%></td><td><%=epayslip%></td>

</tr>
<%
	}
}catch(Exception e){
	out.println(e);
}

%>
</tbody>
</table>
</div>
</body>
</html>