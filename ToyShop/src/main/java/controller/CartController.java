package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.CartDao;
import Model.Cart;

/**
 * Servlet implementation class CartController
 */
@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		System.out.println(action);
		if(action.equalsIgnoreCase("Add To Cart")) {
			Cart c = new Cart();
			c.setCid(Integer.parseInt(request.getParameter("cid")));
			c.setPid(Integer.parseInt(request.getParameter("pid")));
			c.setPname(request.getParameter("pname"));
			c.setPcategory(request.getParameter("pcategory"));
			c.setPprice(Integer.parseInt(request.getParameter("pprice")));
			int total = Integer.parseInt(request.getParameter("pprice"));
			c.setQty(1);
			c.setTotal(total);
			c.setPayment_status("pending");
			System.out.println(c);
			CartDao.insertIntoCart(c);
			System.out.println("After Dao");
			response.sendRedirect("customer-home.jsp");
		}
		else if(action.equalsIgnoreCase("Remove From Cart")) {
			int cid = Integer.parseInt(request.getParameter("cid"));
			int pid = Integer.parseInt(request.getParameter("pid"));
			CartDao.removeFromCart(cid,pid);
			response.sendRedirect("cart.jsp");
		}
	}
	

}
