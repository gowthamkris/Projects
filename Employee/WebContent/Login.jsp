<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
.form
{
color:white;
background-color: rgba(0,0,0,0.5);
width:400px;
height: 500px;
margin-top: 80px;
margin-left: 450px;
padding-top: 60px;
padding-left: 85px;
border-radius: 5px;
}
.ap
{
font-weight: bolder;
font-size: 30px;
font-family: fantasy;
}
.ap1
{
font-weight: bolder;
font-size: 25px;
font-family: fantasy;
}
.top
{

color: #f2f2f2;
margin:0 auto;
margin-top:30px;
height: 100px;
border-radius: 5px;
font-weight: bolder;
font-size: 30px;
font-family: fantasy;
}
.p
{
padding-left: 50px;
padding-top: 40px;
}
.form input[type="text"]
{
border-radius: 5px;
color:skyblue;
height:30px;
width:290px;
font-size:18px;
font-weight: bolder;
font-family: fantasy;
}
.form input[type="password"]
{
border-radius: 5px;
color:skyblue;
height:30px;
width:290px;
font-size:18px;
font-weight: bolder;
font-family: fantasy;
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
.avatar
{
width: 100px;
height: 100px;
border-radius: 50%;
top:160px;
left:650px;
position: absolute;
}
</style>
</head>
<body bgcolor="skyblue">
<div class="top">
<p class="p">Login page</p>
</div>
<img src="ma.png" class="avatar">
<div class="form">
<p class="ap">Login here</p>
<br>
<form method="post" action="Validate" name="Login">
<p class="ap1">username</p>
<input type="text" name="userName" id="username">
<br>
<p class="ap1">password</p>
<input type="password" name="password" id="password">
<br>
<br>
<br>
<input type="submit" value="Submit"> 
</form>
</div>
</body>
</html>