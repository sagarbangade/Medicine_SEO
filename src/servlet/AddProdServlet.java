package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import operateDao.crud;


@WebServlet("/AddProdServlet")
public class AddProdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
      public AddProdServlet() { }
      
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String pname=request.getParameter("pname");
			String pid=request.getParameter("pid");
			String mfname=request.getParameter("mfname");
			String mgfdate=request.getParameter("mgfdate");
			String exp=request.getParameter("expdate");
			String mg=request.getParameter("power");
			String qty=request.getParameter("quantity");
			String price=request.getParameter("price");
			String shope_owner=null;
			String pin=null;
			 HttpSession session=request.getSession(false); 
			 if(session!=null){  
				 shope_owner=(String)session.getAttribute("vname");  
				 pin=(String)session.getAttribute("vpin");     
			       System.out.println(shope_owner);
			        }  
			        else{  
			            request.getRequestDispatcher("login.jsp").include(request, response);  
			        }  
			
			
			int status=crud.addProd(pid, pname, mfname, mgfdate, exp, mg, qty, price,pin,shope_owner);
			
			if(status>0) {
				System.out.println("data entered....");
				response.sendRedirect("viewProduct.jsp");
			}
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
}
