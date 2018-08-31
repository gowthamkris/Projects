<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Employee</title>
<%
if(session.getAttribute("msg")==null)
{
response.sendRedirect("Login.jsp");
}
%>
<style type="text/css">
.form
{
color:white;
background-color: rgba(0,0,0,0.5);
margin-top: 50px;
margin-left: 50px;
margin-right:50px;
padding-top: 60px;
padding-left: 50px;
border-radius: 5px;
}
.form input[type="text"]
{
border-radius: 5px;
color:#006622;
height:30px;
width:290px;
font-size:18px;
font-weight: bolder;
font-family: fantasy;
margin-left:50px;
}
.form input[type="date"]
{
border-radius: 5px;
color:#006622;
height:30px;
width:290px;
font-size:18px;
font-weight: bolder;
font-family: fantasy;
margin-left:50px;
}
.form input[type="submit"]
{
height:40px;
width:80px;
border-radius: 5px;
background-color: skyblue; 
color:#f2f2f2;
font-weight: bolder;
font-size: 17px;
font-family: fantasy;
border-color: white;
border-style: dashed;
margin-left: 200px;
}
.form input[type="submit"]:hover
{
background-color: white;
color: black;
}
.ap1
{
font-weight: bolder;
font-size: 20px;
font-family: fantasy;
color: white;
}
.top
{
background-color: rgba(0,0,0,0.5);
color: white;
margin:0 auto;
margin-top:30px;
height: 100px;
padding-top:40px;
border-radius: 5px;
font-weight: bolder;
font-size: 30px;
font-family: fantasy;
}
</style>
</head>
<body>
<div class="top">
<p class="p"><center>Employee creation</center></p>
</div>
<div class="form">
<form method="post" action="CreateEmp" id="form">
<p class="ap1">Name</p>
<input type="text" name="Name" id="name"><br>
<p class="ap1">Date of Birth</p>
<input type="date" name="Dob" id="dob"><br>
<p class="ap1">Age</p>
<input type="text" name="Age" id="Age"><br>
<p class="ap1">Address</p>
<input type="text" name="Address" id="addr"><br>
<p class="ap1">Salary</p>       
<input type="text" name="Salary" id="sal"><br>
<p class="ap1">Description</p> 
<input type="text" name="Desc" id="des"><br>
<p class="ap1">Email Id</p>    
<input type="text" name="Email" id="email"><br>
<p class="ap1">Phone No</p>     
<input type="text" name="Phone" id="phone"><br><br>
<input type="submit" value="Submit">
</form>
</div>
</body>
</html>