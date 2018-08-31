<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employee</title>
<%
if(session.getAttribute("msg")==null)
{
response.sendRedirect("Login.jsp");
}
%>
<style type="text/css">
.top
{
background-color: skyblue;
color: #f2f2f2;
margin:0 auto;
margin-top:30px;
height: 100px;
border-radius: 5px;
font-weight: bolder;
font-size: 30px;
font-family: fantasy;
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
</style>
</head>
<body>
<div class="top">
<p class="p">View Employee</p>
</div>
<div class="form">
<form method="post" action="ViewEmp">
<input type="text" name="Age">
<input type="submit" value="submit">
</form>
</div>
</body>
</html>