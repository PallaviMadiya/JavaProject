package controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import model.Member;
import service.Servicesss;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/MemberController")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
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
		
		if(action.equalsIgnoreCase("memberSignUp"))
		{
			String email = request.getParameter("email");
			boolean flag = MemberDao.checkEmail(email);
			if(flag==true) {
				request.setAttribute("msg1", "Email Is Already Registered!");
				request.getRequestDispatcher("member-signup.jsp").forward(request, response);
			}
			else {
				Member m = new Member();
				m.setFname(request.getParameter("fname"));
				m.setLname(request.getParameter("lname"));
				m.setContact(Long.parseLong(request.getParameter("contact")));
				m.setH_no(Integer.parseInt(request.getParameter("h_no")));
				m.setAddress(request.getParameter("address"));
				m.setJoin_date(request.getParameter("join_date"));
				m.setEmail(request.getParameter("email"));
				m.setPassword(request.getParameter("password"));
				m.setRegister_status("pending");
				MemberDao.insertMember(m);
				request.setAttribute("msg", "Your registration request has been sent to secretary...wait till approval");
				request.getRequestDispatcher("member-signup.jsp").forward(request, response);
			}
			
		}
		else if(action.equalsIgnoreCase("memberSignIn"))
		{
			Member m = new Member();
			m.setEmail(request.getParameter("email"));
			m.setPassword(request.getParameter("password"));
			String email = request.getParameter("email");
			
			boolean flag = MemberDao.checkEmail(email);
			String status = MemberDao.checkRegisterStatus(email);
			System.out.println(status);
			
			if(flag == true)
			{
				Member m1 = MemberDao.memberSignIn(m);
				if(m1 == null)
				{
					request.setAttribute("msg3", "Wrong Password !!");
					request.getRequestDispatcher("member-login.jsp").forward(request, response);
				}
				else
				{
					if(status.equals("pending"))
					{
						request.setAttribute("msg1", "Your registration request is not approved...so you can not login !!");
						request.getRequestDispatcher("member-login.jsp").forward(request, response);
					}
					else
					{
						HttpSession session = request.getSession();
						session.setAttribute("memberData", m1);
						request.getRequestDispatcher("member-home.jsp").forward(request, response);
					}
				}
			}
			else
			{
				request.setAttribute("msg2", "Email is not registered !!");
				request.getRequestDispatcher("member-login.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("changePassword")) {
			int mid = Integer.parseInt(request.getParameter("mid"));
			String op = request.getParameter("oldPassword");
			String np = request.getParameter("newPassword");
			String cnp = request.getParameter("confirmNewPassword");
			
			boolean flag = MemberDao.checkOldPassword(op,mid);
			if(flag == true) {
				if(np.equals(cnp)) {
					MemberDao.changePassword(np, mid);
					response.sendRedirect("member-home.jsp");
				}else {
					request.setAttribute("msg", "New Password & Confirm New Password Doesn't Match!");
					request.getRequestDispatcher("member-change-password.jsp").forward(request, response);
				}
			}else {
				request.setAttribute("msg1", "Old Password Doesn't Match!");
				request.getRequestDispatcher("member-change-password.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("get otp")) {
			String email = request.getParameter("email");
			boolean flag = MemberDao.checkEmail(email);
			if(flag == true) {
				Random r = new Random();
				int num = r.nextInt(999999);
				Servicesss s = new Servicesss();
				s.sendMail(email, num);
				System.out.println(num);
				request.setAttribute("email", email);
				request.setAttribute("otp", num);
				request.getRequestDispatcher("member-verify-otp.jsp").forward(request, response);
			}else {
				request.setAttribute("msg", "Email Is Not Registered!");
				request.getRequestDispatcher("member-forget-password.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("verify otp")) {
			String email = request.getParameter("email");
			int otp1 = Integer.parseInt(request.getParameter("otp1"));
			int otp2 = Integer.parseInt(request.getParameter("otp2"));
			
			if(otp1 == otp2) {
				request.setAttribute("email", email);
				request.getRequestDispatcher("member-new-password.jsp").forward(request, response);
			}else {
				request.setAttribute("email", email);
				request.setAttribute("otp", otp1);
				request.setAttribute("msg", "OTP Does Not Match!");
				request.getRequestDispatcher("member-verify-otp.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("newPassword")) {
			String email = request.getParameter("email");
			String np = request.getParameter("newPassword");
			String cnp = request.getParameter("confirmNewPassword");
			
			if(np.equals(cnp)) {
				System.out.println(np);
				MemberDao.setPassword(np, email);
				response.sendRedirect("member-login.jsp");
			}else {
				request.setAttribute("msg", "New Password & Confirm New Password Doesn't Match!");
				request.getRequestDispatcher("member-new-password.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("editProfile")) {
			
		}
			
		
	}

}
