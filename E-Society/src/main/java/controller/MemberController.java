package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import model.Member;

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
	}

}
