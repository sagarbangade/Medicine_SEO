package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import operateDao.crud;

/**
 * Servlet implementation class AcLoginServ
 */
@WebServlet("/AcLoginServ")
public class AcLoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AcLoginServ() {
        
    }

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		String accType=request.getParameter("accountType");
		String userName=request.getParameter("username");
		String pswd=request.getParameter("pswd");
		String q=null;
		if(accType.equals("Select Account Type"))
		{
			
			RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
			rd.include(request, response);  
	        out.println("<script type=\"text/javascript\">");  
	        out.println("alert('Please Select Account Type');");  
	        out.println("</script>");
		}
		else{
		if(accType.equals("User"))
		{
			q="SELECT * FROM usr_reg";
		}
		else
		{
			q="SELECT * FROM vender_reg";
		}
		}
		try {
		
			
		boolean sCheck=	crud.login(q,userName,pswd);
		if(sCheck)
		{
			if(accType.equals("User"))
			{
			HttpSession session=request.getSession();  
			session.setAttribute("uname",userName);    
			RequestDispatcher rd=request.getRequestDispatcher("/medisearch.jsp"); 
			rd.forward(request, response); 
			}
			else
			{
				String pin=crud.getPin(userName);
				HttpSession session=request.getSession();  
				session.setAttribute("vname",userName);
				session.setAttribute("vpin",pin);
				
				RequestDispatcher rd=request.getRequestDispatcher("/viewProduct.jsp"); 
				rd.forward(request, response); 
			}
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");  
			rd.include(request, response);  
	        out.print("<center><h3 style=\"color:red;\">This Combination of user and password does not exist</h3></center>");	

	        }
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		};
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
