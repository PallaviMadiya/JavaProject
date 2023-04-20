package controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.SellerDao;
import model.SellerModel;
import service.Servicess;

/**
 * Servlet implementation class SellerControlller
 */
@WebServlet("/SellerControlller")
public class SellerControlller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerControlller() {
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
			SellerModel s = new SellerModel();
			s.setName(request.getParameter("name"));
			s.setContact(Long.parseLong(request.getParameter("contact")));
			s.setAddress(request.getParameter("address"));
			s.setEmail(request.getParameter("email"));
			s.setPassword(request.getParameter("password"));
			SellerDao.insertSeller(s);
			request.setAttribute("msg", "Data registered successfully");
			request.getRequestDispatcher("seller_login.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("login"))
		{
			SellerModel s = new SellerModel();
			s.setEmail(request.getParameter("email"));
			s.setPassword(request.getParameter("password"));
			String email = request.getParameter("email");
			boolean flag = SellerDao.checkEmail(email);
			
			if(flag==true)
			{
				SellerModel s1 = SellerDao.loginSeller(s);
				if(s1==null)
				{
					request.setAttribute("msg2", "Wrong password !!");
					request.getRequestDispatcher("seller_login.jsp").forward(request, response);
				}
				else
				{
					HttpSession session = request.getSession();
					session.setAttribute("data", s1);
					request.getRequestDispatcher("seller_home.jsp").forward(request, response);
				}
			}
			else
			{
				request.setAttribute("msg1", "Email is not registered !!");
				request.getRequestDispatcher("seller_login.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("update"))
		{
			SellerModel s = new SellerModel();
			s.setId(Integer.parseInt(request.getParameter("id")));
			s.setName(request.getParameter("name"));
			s.setContact(Long.parseLong(request.getParameter("contact")));
			s.setAddress(request.getParameter("address"));
			s.setEmail(request.getParameter("email"));
			SellerDao.updateProfile(s);
			HttpSession session = request.getSession();
			session.setAttribute("data", s);
			request.getRequestDispatcher("seller_home.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("change password"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			String op = request.getParameter("op");
			String np = request.getParameter("np");
			String cnp = request.getParameter("cnp");
			boolean flag = SellerDao.checkOldPassword(op, id);
			if(flag==true)
			{
				if(np.equals(cnp))
				{
					SellerDao.updatePassword(np, id);
					response.sendRedirect("seller_home.jsp");
				}
				else
				{
					request.setAttribute("msg1", "New password and Confirm new password not matched !!");
					request.getRequestDispatcher("seller_change_password.jsp").forward(request, response);
				}
			}
			else
			{
				request.setAttribute("msg", "Old password not matched !!");
				request.getRequestDispatcher("seller_change_password.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("get otp"))
		{
			String email = request.getParameter("email");
			boolean flag = SellerDao.checkEmail(email);
			if(flag==true)
			{
				Random r = new Random();
				int num = r.nextInt(999999);
				Servicess s = new Servicess();
				s.sendMail(email, num);
				request.setAttribute("email", email);
				request.setAttribute("otp", num);
				request.getRequestDispatcher("seller_verify_otp.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("msg1", "Email is not registered !!");
				request.getRequestDispatcher("seller_forgot_password.jsp").forward(request, response);
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
				request.getRequestDispatcher("seller_new_password.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("email", email);
				request.setAttribute("otp", otp1);
				request.setAttribute("msg", "OTP not matched !!");
				request.getRequestDispatcher("seller_verify_otp.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("new password"))
		{
			String email = request.getParameter("email");
			String np = request.getParameter("np");
			String cnp = request.getParameter("cnp");
			if(np.equals(cnp))
			{
				SellerDao.newPassword(np, email);
				response.sendRedirect("seller_login.jsp");
			}
			else
			{
				request.setAttribute("msg1", "New password and Confirm new password not matched !!");
				request.getRequestDispatcher("seller_new_password.jsp").forward(request, response);
			}
		}
	}

}
