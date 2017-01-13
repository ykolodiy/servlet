package servletPackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet
 */
@WebServlet(description = "some discription here", urlPatterns = { "/Servlet" })
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
private int count =0;
	
	
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		increment();
		System.out.println("test");
		String searchTerm = request.getParameter("searchTerm");		
		String a = request.getParameter("a");	
		String b = request.getParameter("b");
		
		
		int sum = Integer.parseInt(a) + Integer.parseInt(b);
		PrintWriter write = response.getWriter();
		write.println("this is <b>bold</b>");
		write.println("you serached for ...." +searchTerm);
		write.println("you SUM IS" +sum);
		decrement();
		
	}
protected synchronized void increment () {count++;}
protected synchronized void decrement () {count--;}
protected synchronized int getCount () {return count;}
}
