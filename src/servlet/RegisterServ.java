package servlet;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import operateDao.crud;


@WebServlet("/UserRegServ")
public class RegisterServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterServ() {   
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String first=request.getParameter("fname");
		String last=request.getParameter("lname");
		String email=request.getParameter("email");
		String phone=request.getParameter("phno");
		String password=request.getParameter("pass1");
		String repassword=request.getParameter("pass2");
		
		int status=crud.addUsrreg(first, last, email, phone, password, repassword);
		if(status==1) {
			response.sendRedirect("login.jsp");
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
