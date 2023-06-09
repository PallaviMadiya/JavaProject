package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.CustomerDao;
import Model.Customer;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
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
		if(action.equalsIgnoreCase("login")) {
			String admin_email = "pallavimadiya@gmail.com";
			String admin_password = "P123";
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			if(admin_email.equals(email) && admin_password.equals(password)) {
				HttpSession session = request.getSession();
				session.setAttribute("data", email);
				request.getRequestDispatcher("admin-home.jsp").forward(request, response);
			}else {
				request.setAttribute("msg", "Email Or Password Is Not Correct!");
				request.getRequestDispatcher("admin-login.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("update customer")) {
			Customer c = new Customer();
			c.setCid(Integer.parseInt(request.getParameter("cid")));
			c.setName(request.getParameter("name"));
			c.setContact(Long.parseLong(request.getParameter("contact")));
			c.setAddress(request.getParameter("address"));
			c.setEmail(request.getParameter("email"));
			c.setPassword(request.getParameter("password"));
			System.out.println(c);
			CustomerDao.updateProfile(c);
			HttpSession session = request.getSession();
			session.setAttribute("custData", c);
			response.sendRedirect("admin-customer-list.jsp");
			
		}
	}
	

}
