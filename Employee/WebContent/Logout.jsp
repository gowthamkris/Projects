<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
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
response.sendRedirect("Login.jsp");
}
session=request.getSession();
session.invalidate();
%>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
%>
</body>
</html>