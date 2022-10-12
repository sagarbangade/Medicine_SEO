package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import operateDao.crud;

@WebServlet("/DeleteProdServ")
public class DeleteProdServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteProdServ() {
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			int pid=Integer.parseInt(request.getParameter("pid"));
			
			System.out.println("if>>"+pid);
			
			int status=crud.deleteProd(pid);
			
			if(status==1){
				response.sendRedirect("viewProduct.jsp");
			}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	}

}
