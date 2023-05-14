package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDao;
import dao.HallBookDao;

import model.Admin;
import model.HallBook;
import model.Member;

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
		System.out.println(action);
		
		if(action.equalsIgnoreCase("AdminSignIn"))
		{
			Admin a = new Admin();
			a.setEmail(request.getParameter("email"));
			a.setPassword(request.getParameter("password"));
			String email = request.getParameter("email");
			boolean flag = AdminDao.checkEmail(email);
			
			if(flag == true)
			{
				Admin a1 = AdminDao.adminSignIn(a);
				if(a1==null)
				{
					request.setAttribute("msg2", "Wrong password !!");
					request.getRequestDispatcher("admin-login.jsp").forward(request, response);
				}
				else
				{
					HttpSession session = request.getSession();
					session.setAttribute("adminData", a1);
					request.getRequestDispatcher("admin-home.jsp").forward(request, response);
					System.out.println(a1.getName());
				}
			}
			else
			{
				request.setAttribute("msg1", "Email is not registered !!");
				request.getRequestDispatcher("admin-login.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("adminAddMember")) {
			String email = request.getParameter("email");
			boolean flag = AdminDao.checkMemberEmail(email);
			if(flag==true) {
				request.setAttribute("msg1", "Email Is Already Registered!");
				request.getRequestDispatcher("admin-add-new-member.jsp").forward(request, response);
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
				m.setRegister_status("approved");
				AdminDao.insertMember(m);
				request.getRequestDispatcher("admin-approve-registration-request.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("adminBookHall")) {
			String email = request.getParameter("email");
			System.out.println("Before Mid If");
			int mid = AdminDao.getMemberId(email);
			System.out.println("Before If");
			if(mid != 0) {
				System.out.println("After If");

				HallBook b = new HallBook();
				b.setMid(mid);
				b.setB_subject(request.getParameter("b_subject"));
				b.setB_date(request.getParameter("b_date"));
				
				String bdate = request.getParameter("b_date");
				boolean flag = HallBookDao.checkHallBookingDate(bdate);
				
				if(flag == true)
				{
					request.setAttribute("msg", "Sorry...This date has been already booked !!");
					request.getRequestDispatcher("admin-hall-booking.jsp").forward(request, response);
				}
				else
				{
					AdminDao.adminBookHall(b);
					System.out.println("Admin Hall Booked!! Controller");
					response.sendRedirect("admin-view-hall-booking.jsp");
				}
				
			}
		}
		else if(action.equalsIgnoreCase("adminEditBookHallDetail")) {
			HallBook b = new HallBook();
			b.setBid(Integer.parseInt(request.getParameter("bid")));
			b.setMid(Integer.parseInt(request.getParameter("mid")));
			b.setB_subject(request.getParameter("b_subject"));
			b.setB_date(request.getParameter("b_date"));
			HallBookDao.updateBookHallDetail(b);
			response.sendRedirect("admin-view-hall-booking.jsp");
		}
		
	}

}
