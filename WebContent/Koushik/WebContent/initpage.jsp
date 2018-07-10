<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>im jsp file</title>
</head>
<%! public void jspInit(){
	
	//servlet scope
	String defaultuser = getServletConfig().getInitParameter("inituserjsp");
	
	// application scope
	ServletContext c = getServletContext();
	
	c.setAttribute("defaultu", defaultuser);
	
} %>

<body>
<h2>hey im jsp</h2>
this is init user :  <%=getServletConfig().getInitParameter("inituserjsp")

%>
the value in servlet context is <%=getServletContext().getAttribute("defaultu") %>
</body>
</html>