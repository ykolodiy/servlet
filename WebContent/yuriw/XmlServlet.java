package yuriw;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class XmlServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	String user = request.getParameter("user");
	PrintWriter out = response.getWriter();
	
	ServletContext context = request.getServletContext();
	context.setAttribute("contectuser", "hahaimcontext");
	
	//SESSION
	HttpSession session = request.getSession();
	if (user !="" && user != null)
	{
	session.setAttribute("sessionuser", user);
	}
	
	else {
		user="";
			
	}
	out.println("hello request "+request.getParameter("user")+"<br>");
	out.println("hello session "+(String)session.getAttribute("sessionuser")+"<br>");
	out.println("hello context "+(String)context.getAttribute("contectuser")+"<br>");

	}
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String user = request.getParameter("user");
		String last = request.getParameter("last");
		String [] location = request.getParameterValues("location");
		
		
		PrintWriter out = response.getWriter();
		
		out.println("hello from post "+user+" with last name "+last+ " places "+Arrays.toString(location));
	}
	
	
}
