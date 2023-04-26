<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body style="background-color:pink;">   
  <center>
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <h1>Registration Form</h1>
            </div>
            <div class="col-sm-4"></div>
        </div>
    </center><br>
    <form action="empregister_action.jsp" method="post" target="_parent">
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">Name</label></div>
     <div class="col-sm-3"><input type="text" placeholder="Name" name="empname" class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
       <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">Password</label></div>
     <div class="col-sm-3"><input type="password" placeholder="password" name="password" class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">Email</label></div>
     <div class="col-sm-3"> <input type="email" placeholder="Email" name="email"  class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
    <div class="row">
    <div class="col-sm-4"></div>
        <div class="col-sm-1"><label>Gender</label></div>
         <div class="col-sm-3">
       <input type="radio" name="Gender" value="Male" checked="checked">Male
            <input type="radio" name="Gender" value="Female">Female
        </div>
        <div class="col-sm-4"></div>
        
    </div><br>
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">DateofBirth</label></div>
       <div class="col-sm-3"><input type="date" placeholder="date of birth" name="dob"  class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:4px;">Phone Number</label></div>
        <div class="col-sm-3"><input type="number" placeholder="phone number" name="phoneno" class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br> 
    
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:2px;">Address</label></div>
       <div class="col-sm-6">   <textarea name="address" > </textarea></div>
        <div class="col-sm-1"></div>
    </div><br>
    <div class="row">
        <div class="col-sm-5"></div>
        <div class="col-sm-4"><input type="submit"  class="btn btn-primary" value="Register"> <input type="reset"  class="btn btn-primary" value="Cancel"></div>
        <div class="col-sm-3"></div>
    </div>
    </form>
</body>
</html>




 
