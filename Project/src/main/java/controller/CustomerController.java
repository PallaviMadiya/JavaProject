package controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CustomerDao;
import model.CustomerModel;
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
		
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("register"))
		{
			CustomerModel c = new CustomerModel();
			c.setName(request.getParameter("name"));
			c.setContact(Long.parseLong(request.getParameter("contact")));
			c.setAddress(request.getParameter("address"));
			c.setEmail(request.getParameter("email"));
			c.setPassowrd(request.getParameter("password"));
			CustomerDao.insertCustomer(c);
			request.setAttribute("msg", "Customer data registered");
			request.getRequestDispatcher("customer_login.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("login"))
		{
			CustomerModel c = new CustomerModel();
			c.setEmail(request.getParameter("email"));
			c.setPassowrd(request.getParameter("password"));
			String email = request.getParameter("email");
			boolean flag = CustomerDao.checkEmail(email);
			
			if(flag==true)
			{
				CustomerModel c1 = CustomerDao.loginCustomer(c);
				if(c1==null)
				{
					request.setAttribute("msg2", "Wrong password !!");
					request.getRequestDispatcher("customer_login.jsp").forward(request, response);
				}
				else
				{
					HttpSession session = request.getSession();
					session.setAttribute("data",c1);
					request.getRequestDispatcher("customer_home.jsp").forward(request, response);
				}
			}
			else
			{
				request.setAttribute("msg1", "Email not registered !!");
				request.getRequestDispatcher("customer_login.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("update"))
		{
			CustomerModel c = new CustomerModel();
			c.setId(Integer.parseInt(request.getParameter("id")));
			c.setName(request.getParameter("name"));
			c.setContact(Long.parseLong(request.getParameter("contact")));
			c.setAddress(request.getParameter("address"));
			c.setEmail(request.getParameter("email"));
			CustomerDao.updateCustomer(c);
			HttpSession session = request.getSession();
			session.setAttribute("data", c);
			request.getRequestDispatcher("customer_home.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("change password"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			String op = request.getParameter("op");
			String np = request.getParameter("np");
			String cnp = request.getParameter("cnp");
			boolean flag = CustomerDao.checkOldPassword(op, id);
			if(flag == true)
			{
				if(np.equals(cnp))
				{
					CustomerDao.changePassword(np, id);
					response.sendRedirect("customer_home.jsp");
				}
				else
				{
					request.setAttribute("msg1", "New passowrd and Confirm new password not matched !!");
					request.getRequestDispatcher("customer_change_password.jsp").forward(request, response);
				}
			}
			else
			{
				request.setAttribute("msg", "Old password not matched !!");
				request.getRequestDispatcher("customer_change_password.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("get otp"))
		{
			String email = request.getParameter("email");
			boolean flag = CustomerDao.checkEmail(email);
			if(flag==true)
			{
				Random r = new Random();
				int num = r.nextInt(999999);
				Servicess s = new Servicess();
				s.sendMail(email, num);
				request.setAttribute("email", email);
				request.setAttribute("otp", num);
				request.getRequestDispatcher("customer_verify_otp.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("msg1", "Email is not registered !!");
				request.getRequestDispatcher("customer_forgot_password.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("verify"))
		{
			String email = request.getParameter("email");
			int otp1 = Integer.parseInt(request.getParameter("otp1"));
			int otp2 = Integer.parseInt(request.getParameter("otp2"));
			if(otp1==otp2)
			{
				request.setAttribute("email", email);
				request.getRequestDispatcher("customer_new_password.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("email", email);
				request.setAttribute("otp", otp1);
				request.setAttribute("msg", "OTP not matched !!");
				request.getRequestDispatcher("customer_verify_otp.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("new password"))
		{
			String email = request.getParameter("email");
			String np = request.getParameter("np");
			String cnp = request.getParameter("cnp");
			if(np.equals(cnp))
			{
				CustomerDao.newPassword(np, email);
				response.sendRedirect("customer_login.jsp");
			}
			else
			{
				request.setAttribute("msg1", "New password and Confirm new password not matched !!");
				request.getRequestDispatcher("customer_new_password.jsp").forward(request, response);
			}
		}
		
	}
}
