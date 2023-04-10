package controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.CustomerDao;
import Dao.SellerDao;
import Model.Customer;
import Model.Seller;
import service.Servicess;

/**
 * Servlet implementation class CustomerController
 */
@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerController() {
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
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("register")){
			String email = request.getParameter("email");
			boolean flag = CustomerDao.checkEmail(email);
			if(flag==true) {
				request.setAttribute("msg1", "Email Is Already Registered!");
				request.getRequestDispatcher("customer-register.jsp").forward(request, response);
			}else {
				Customer c = new Customer();
				c.setName(request.getParameter("name"));
				c.setContact(Long.parseLong(request.getParameter("contact")));
				c.setAddress(request.getParameter("address"));
				c.setEmail(request.getParameter("email"));
				c.setPassword(request.getParameter("password"));
				CustomerDao.insertCustomer(c);
				request.setAttribute("msg", "Customer Registered Successfully");
				request.getRequestDispatcher("customer-login.jsp").forward(request, response);
			}
			
		}
		else if(action.equalsIgnoreCase("login")) {
			Customer c = new Customer();
			c.setEmail(request.getParameter("email"));
			c.setPassword(request.getParameter("password"));			
			Customer c1 = CustomerDao.cutomerLogin(c);
			if(c1 == null) {
				System.out.println("Null Object Controller");
				request.setAttribute("msg1", "Email Or Password Is Incorrect!");
				request.getRequestDispatcher("customer-login.jsp").forward(request, response);
			}
			else {
				System.out.println("Seesion Created- Login");
				HttpSession session = request.getSession();
				session.setAttribute("custData", c1);
				request.getRequestDispatcher("customer-home.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("update")) {
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
			response.sendRedirect("customer-home.jsp");
			
		}
		else if(action.equalsIgnoreCase("change password")) {
			int cid = Integer.parseInt(request.getParameter("cid"));
			String op = request.getParameter("op");
			String np = request.getParameter("np");
			String cnp = request.getParameter("cnp");
			
			boolean flag = CustomerDao.checkOldPassword(op, cid);
			if(flag == true) {
				if(np.equals(cnp)) {
					CustomerDao.updatePassword(np,cid);
					response.sendRedirect("customer-home.jsp");
				}
				else {
					request.setAttribute("msg", "New Password & Confirm New Password Doesn't Match!");
					request.getRequestDispatcher("customer-change-password.jsp").forward(request, response);
				}
			}else {
				request.setAttribute("msg1", "Old Password Doesn't Match!");
				request.getRequestDispatcher("customer-change-password.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("get otp")) {
			String email = request.getParameter("email");
			boolean flag = CustomerDao.checkEmail(email);
			if(flag == true) {
				Random r = new Random();
				int num = r.nextInt(999999);
				Servicess s = new Servicess();
				s.sendMail(email, num);
				request.setAttribute("email", email);
				request.setAttribute("otp", num);
				request.getRequestDispatcher("customer-verify-otp.jsp").forward(request, response);
			}
			else {
				request.setAttribute("msg", "Email Is Not Registered!");
				request.getRequestDispatcher("customer-forget-password.jsp").forward(request, response);	
			}
		}
		else if(action.equalsIgnoreCase("verify")) {
			String email = request.getParameter("email");
			int otp1 = Integer.parseInt(request.getParameter("otp1"));
			int otp2 = Integer.parseInt(request.getParameter("otp2"));

			if(otp1 == otp2) {
				request.setAttribute("email", email);
				request.getRequestDispatcher("customer-new-password.jsp").forward(request, response);
			}
			else {
				request.setAttribute("email", email);
				request.setAttribute("otp", otp1);
				request.setAttribute("msg", "OTP Not Matched!");
				request.getRequestDispatcher("customer-verify-otp.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("New Password")) {
			String email = request.getParameter("email");
			String np = request.getParameter("np");
			String cnp = request.getParameter("cnp");
			
			if(np.equals(cnp)) {
				CustomerDao.setPassword(np,email);
				response.sendRedirect("customer-login.jsp");
			}
			else {
				request.setAttribute("msg", "New Password & Confirm New Password Doesn't Match!");
				request.getRequestDispatcher("customer-new-password.jsp").forward(request, response);
			}
		}
	}
}


