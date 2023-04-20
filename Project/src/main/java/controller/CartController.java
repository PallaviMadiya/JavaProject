package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDao;
import model.CartModel;

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
		
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("Add To Cart"))
		{
			CartModel c = new CartModel();
			c.setCusid(Integer.parseInt(request.getParameter("cusid")));
			c.setPid(Integer.parseInt(request.getParameter("pid")));
			c.setPname(request.getParameter("pname"));
			c.setPcategory(request.getParameter("pcategory"));
			c.setPprice(Integer.parseInt(request.getParameter("pprice")));
			int total = Integer.parseInt(request.getParameter("pprice"));
			c.setQty(1);
			c.setTotal(total);
			c.setPayment_status("pending");
			CartDao.insertIntoCart(c);
			response.sendRedirect("customer_home.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
