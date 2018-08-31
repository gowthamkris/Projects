<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
if(session.getAttribute("username")==null)
{
response.sendRedirect("Login.jsp");
}
else
{
session=request.getSession();
session.invalidate();
}
%>
<%
session=request.getSession();
String success="msg success";
session.setAttribute("msg",success);
%>
<title>Welcome Page</title>
<style type="text/css">
.wel
{
color: skyblue;
font-weight: bolder;
font-size: 30px;
font-family: fantasy;
width:500px;
height:500px;
padding-left: 100px;
}
.source
{
color: white;
background-color:skyblue;
font-weight: bolder;
font-size: 30px;
font-family: fantasy;
width:730px;
height:550px;
}
.top
{
background-color: skyblue;
color: #f2f2f2;
height: 100px;
border-radius: 5px;
font-weight: bolder;
font-size: 30px;
font-family: fantasy;
}
.top p
{
padding-top: 10px;
padding-left: 80px;
}
.top input[type="submit"]
{
height:40px;
width:250px;
border-radius: 5px;
background-color: skyblue; 
color:#f2f2f2;
font-weight: bolder;
font-size: 17px;
font-family: fantasy;
border-color: white;
margin-left: 50px;
}
.Create input[type="submit"]
{
height:40px;
width:250px;
border-radius: 5px;
background-color: skyblue; 
color:#f2f2f2;
font-weight: bolder;
font-size: 17px;
font-family: fantasy;
border-color: white;
margin-left: 300px;
}
.View input[type="submit"]
{
height:40px;
width:250px;
border-radius: 5px;
background-color: skyblue; 
color:#f2f2f2;
font-weight: bolder;
font-size: 17px;
font-family: fantasy;
border-color: white;
margin-left:50px;
}
.frame
{
border-radius: 5px;
}
.p
{
padding-top: 200px;
}
</style>
<script type="text/javascript">
alert("Login Successfull");
</script>
</head>
<body bgcolor=white>
<div class="top">
<table>
<tr><td>
<p>Home</p>
</td>
<td>
<div class="Create">
<form method="post" action="CreateEmp.jsp" target="frame">
<input type="submit" value="Create Employee">
</form>
</div>
</td>
<td>
<div class="View">
<form method="post" action="ViewEmp.jsp" target="frame">
<input type="submit" value="View Employee">
</form>
</div>
</td>
<td>
<form method="post" action="Logout.jsp">
<input type="submit" value="Logout">
</form>
</td>
</tr>
</table>
</div>
<table>
<tr><td>
<div class="wel">
<p class="p">Welcome Admin</p>
</div>
</td>
<td>
<div class="source">
<iframe height="550px" width="730px" name="frame" class="frame"></iframe>
</div>
</td></tr>
</table>
</body>
</html>