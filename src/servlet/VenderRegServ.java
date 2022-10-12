package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import operateDao.crud;


@WebServlet("/VenderRegServ")
public class VenderRegServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public VenderRegServ() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String first=request.getParameter("fname");
		String last=request.getParameter("lname");
		String email=request.getParameter("email");
		String phone=request.getParameter("phno");
		String venderName=request.getParameter("vender");
		String address=request.getParameter("address");
		String glink=request.getParameter("link");
		String pincode=request.getParameter("pin");
		String password=request.getParameter("pass1");
		
		
		int status=crud.addVenderreg(first, last, email, phone, venderName, address, pincode, password,glink);
		if(status==1) {
			response.sendRedirect("login.jsp");
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
