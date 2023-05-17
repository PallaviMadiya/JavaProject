package controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.StudentDao;
import model.Student;
import service.Servicesss;

/**
 * Servlet implementation class StudentController
 */
@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentController() {
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
		if(action.equalsIgnoreCase("signup")){
			String email = request.getParameter("email");
			boolean flag = StudentDao.checkEmail(email);
			if(flag==true) {
				request.setAttribute("msg", "Email Is Already Registered!");
				request.getRequestDispatcher("signup.jsp").forward(request, response);
			}else {
				Student s = new Student();
				s.setFname(request.getParameter("fname"));
				s.setLname(request.getParameter("lname"));
				s.setEmail(request.getParameter("email"));
				s.setContact(Long.parseLong(request.getParameter("contact")));
				s.setAddress(request.getParameter("address"));
				s.setGender(request.getParameter("gender"));
				s.setPassword(request.getParameter("password"));
				s.setLogin_status("pending");
				
				StudentDao.addStudent(s);
				//response.sendRedirect("emailVarification.jsp");
				boolean flag1 = StudentDao.checkEmail(email);
				if(flag1 == true) {
					Random r = new Random();
					int num = r.nextInt(9999);
					Servicesss s1 = new Servicesss();
					s1.sendMail(email, num);
					request.setAttribute("email", email);
					request.setAttribute("otp", num);
					request.getRequestDispatcher("verify-otp.jsp").forward(request, response);
				}
				else {
					request.setAttribute("msg1", "Email Is Not Registered!!");
					request.getRequestDispatcher("verify-email.jsp").forward(request, response);
				}
			}
		}
		else if(action.equalsIgnoreCase("validateEmail")) {
			String email = request.getParameter("email");
			boolean flag = StudentDao.checkEmail(email);
			if(flag==true) {
				Random r = new Random();
				int num = r.nextInt(9999);
				Servicesss s1 = new Servicesss();
				s1.sendMail(email, num);
				request.setAttribute("email", email);
				request.setAttribute("otp", num);
				request.getRequestDispatcher("verify-otp.jsp").forward(request, response);
			}
			else {
				request.setAttribute("msg", "Email Is Not Registered!");
				request.getRequestDispatcher("verify-email.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("validateOTP")) {
			String email = request.getParameter("email");
			int otp1 = Integer.parseInt(request.getParameter("otp1"));
			int otp2 = Integer.parseInt(request.getParameter("otp2"));

			if(otp1 == otp2) {
				StudentDao.updateStatus(email);
				request.setAttribute("email", email);
				request.getRequestDispatcher("signin.jsp").forward(request, response);
			}
			else {
				request.setAttribute("email", email);
				request.setAttribute("otp", otp1);
				request.setAttribute("msg", "OTP Not Matched!");
				request.getRequestDispatcher("verify-otp.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("signin")) {
			Student s = new Student();
			s.setEmail(request.getParameter("email"));
			s.setPassword(request.getParameter("password"));			
			
			String email = request.getParameter("email");
			String login_status = StudentDao.checkLoginStatus(email);
			
			if(login_status.equals("verified"))
			{
				Student s1 = StudentDao.studentSignIn(s);
				if(s1 != null) {
					System.out.println("Seesion Created- Login");
					HttpSession session = request.getSession();
					session.setAttribute("data", s1);
					request.getRequestDispatcher("home.jsp").forward(request, response);
				}
				else {
					System.out.println("Null Object Controller");
					request.setAttribute("msg1", "Email Or Password Is Incorrect!");
					request.getRequestDispatcher("signin.jsp").forward(request, response);
				}
			}
			else {
				System.out.println("Unverified Email! Controller");
				request.setAttribute("msg2", "Email Is Not Verified!");
				request.getRequestDispatcher("verify-email.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("checkEmail")) {
			String email = request.getParameter("email");
			boolean flag = StudentDao.checkEmail(email);
			if(flag==true) {
				Random r = new Random();
				int num = r.nextInt(9999);
				Servicesss s1 = new Servicesss();
				s1.sendMail(email, num);
				request.setAttribute("email", email);
				request.setAttribute("otp", num);
				request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
			}
			else {
				request.setAttribute("msg", "Email Is Not Registered!");
				request.getRequestDispatcher("checkEmail.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("forgotPassword")) {
			String email = request.getParameter("email");
			int otp1 = Integer.parseInt(request.getParameter("otp1"));
			int otp2 = Integer.parseInt(request.getParameter("otp2"));

			if(otp1 == otp2) {
				StudentDao.updateStatus(email);
				System.out.println("Forgot Password OTP Status CHange");
				request.setAttribute("email", email);
				request.getRequestDispatcher("new-password.jsp").forward(request, response);
			}
			else {
				System.out.println("Forgot Password OTP Status CHange 2");
				request.setAttribute("email", email);
				request.setAttribute("otp", otp1);
				request.setAttribute("msg", "OTP Not Matched!");
				System.out.println("Forgot Password OTP Status CHange 3");
				request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("setNewPassword")) {
			String email = request.getParameter("email");
			String np = request.getParameter("np");
			String cnp = request.getParameter("cnp");
			
			if(np.equals(cnp)) {
				StudentDao.setPassword(np,email);
				response.sendRedirect("signin.jsp");
			}
			else {
				request.setAttribute("email", email);
				request.setAttribute("msg", "New Password & Confirm New Password Doesn't Match!");
				request.getRequestDispatcher("new-password.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("changePassword")) {
			int Sid = Integer.parseInt(request.getParameter("sid"));
			String op = request.getParameter("op");
			String np = request.getParameter("np");
			String cnp = request.getParameter("cnp");
			
			boolean flag = StudentDao.checkOldPassword(op, Sid);
			if(flag == true) {
				if(np.equals(cnp)) {
					StudentDao.updatePassword(np,Sid);
					response.sendRedirect("home.jsp");
				}
				else {
					request.setAttribute("msg", "New Password & Confirm New Password Doesn't Match!");
					request.getRequestDispatcher("change-password.jsp").forward(request, response);
				}
			}else {
				request.setAttribute("msg1", "Old Password Doesn't Match!");
				request.getRequestDispatcher("change-password.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("edit-profile")) {
			Student s = new Student();
			s.setSid(Integer.parseInt(request.getParameter("sid")));
			s.setFname(request.getParameter("fname"));
			s.setLname(request.getParameter("lname"));
			s.setEmail(request.getParameter("email"));
			s.setContact(Long.parseLong(request.getParameter("contact")));
			s.setAddress(request.getParameter("address"));
			s.setGender(request.getParameter("gender"));
			s.setPassword(request.getParameter("password"));
			s.setLogin_status(request.getParameter("login_status"));
			System.out.println(s);
			StudentDao.updateProfile(s);
			HttpSession session = request.getSession();
			session.setAttribute("data", s);
			response.sendRedirect("home.jsp");
		}
	}

}
