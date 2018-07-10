<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>im jsp file</title>
</head>
<body>
<h2>hey im jsp</h2>

<%
String userName = request.getParameter("name");

session.setAttribute("sname", userName);
application.setAttribute("aname", userName);

String userName1 = session.getAttribute("sname").toString();
String userName2 = application.getAttribute("aname").toString();
%>

your name is: <%=userName %>
your sname is: <%=userName1 %>
your aname is: <%=userName2 %>
</body>
</html>