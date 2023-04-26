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
<div class="row"> 
 
        
           <div class="col-sm-4"></div>
             
    <div class="col-sm-4">
    <h3>Update Salary Details</h3>
        <form action="Upload" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-2"><label>Employee Id</label></div>
                    <div class="col-sm-4"><input type="number" placeholder="ID" name="eid" class="form-control" ></div>
                    <div class="col-sm-2"></div>
                </div><br>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-2"><label>Employee Name</label></div>
                    <div class="col-sm-4"><input type="text" placeholder="NAME" name="ename"  class="form-control" ></div>
                    <div class="col-sm-4"></div>
                </div><br>
               
                     <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-2"><label>Employee Description</label></div>
                    <div class="col-sm-4"><input type="text" placeholder="Description" name="edescription"  class="form-control" ></div>
                    <div class="col-sm-4"></div>
                </div><br>
               
           <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">Employee Payslip</label></div>
       <div class="col-sm-6"><input type="file" placeholder="pay slip" name="file"  class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
                <div class="row">
                    <div class="col-sm-6"></div>
                    <div class="col-sm-2"><button type="submit" class="btn btn-primary">Submit</button>
                            <button type="reset" class="btn btn-primary">Cancel</button></div>
                    <div class="col-sm-4"></div>
                </div>
            </form>
    </div>
    </div>
</body>
</html>