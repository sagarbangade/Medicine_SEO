package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import operateDao.crud;

@WebServlet("/UpdateProdServ")
public class UpdateProdServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateProdServ() {
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pname=request.getParameter("pname");
		String pid=request.getParameter("pid");
		String mfname=request.getParameter("mfname");
		String mgfdate=request.getParameter("mgfdate");
		String exp=request.getParameter("expdate");
		String mg=request.getParameter("power");
		String qty=request.getParameter("quantity");
		String price=request.getParameter("price");
		
		//run kr...oye  run karo
		System.out.println(pname+" "+pid+" "+mfname+" "+mgfdate+" "+exp+" "+mg+" "+qty+" "+price);
		
		int status=crud.updateProd(pid, pname, mfname, mgfdate, exp, mg, qty, price);
		
		if(status>0) {
			System.out.println("data entered....");
			response.sendRedirect("viewProduct.jsp");
		}
		
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
