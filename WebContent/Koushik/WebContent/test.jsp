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

<%!
public int add(int a, int b){
	return a*b;
	
}
%>

<%
int i=2;
int k = 5;
int l = i+k;

//out.println("value of l = "+l);

%>

the value of L: <b> <%=l %> </b>

<% int z=add(54,27); %>
the value of L: <b> <%=z %> </b>
</body>
</html>