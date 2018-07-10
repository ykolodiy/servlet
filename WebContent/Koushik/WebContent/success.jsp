<%
User user = (User) request.getAttribute("user");
%>
<jsp:useBean id="user" class="User" scope="request>


HELLO <%=user.getUserName() %>
HELLO <jsp:getProperty property="username" name="user">
