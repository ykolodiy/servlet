<%
User user = (User) request.getAttribute("user");
%>
<jsp:useBean id="user" class="User" scope="request>
 // if no value in line 4 it cat set new one
<jsp:setProperty  property="username" name="user" value="newuser">
// or get from request if login form goest to this jsp
<jsp:setProperty  property="username" name="user" param="newuser">
</jsp:useBean>


HELLO <%=user.getUserName() %>
HELLO <jsp:getProperty property="username" name="user">
