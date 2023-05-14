package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ComplaintDao;
import model.Complaint;
import model.ComplaintReply;

/**
 * Servlet implementation class ComplaintController
 */
@WebServlet("/ComplaintController")
public class ComplaintController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplaintController() {
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
		
		if(action.equalsIgnoreCase("complaintRegister"))
		{
			Complaint c = new  Complaint();
			int mid = Integer.parseInt(request.getParameter("mid"));
			System.out.println(mid);
			c.setMid(Integer.parseInt(request.getParameter("mid")));
			c.setH_no(Integer.parseInt(request.getParameter("h_no")));
			c.setSubject(request.getParameter("subject"));
			c.setCdate(request.getParameter("cdate"));
			c.setDescription(request.getParameter("description"));
			c.setComplaint_status("applied");
			ComplaintDao.registerComplaint(c);
			request.setAttribute("msg", "Your complaint has been registered !!");
			request.getRequestDispatcher("member-register-complaint.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("adminReply"))
		{
			Date date = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			String rdate = formatter.format(date);
			
			ComplaintReply cr = new ComplaintReply();
			cr.setCid(Integer.parseInt(request.getParameter("cid")));
			cr.setC_reply(request.getParameter("c_reply"));
			cr.setReply_date(rdate);
			ComplaintDao.adminReplyComplaint(cr);
			request.setAttribute("reply", "Your Reply has been Sent !!");
			request.getRequestDispatcher("admin-reply-complaint.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("adminManageComplaint"))
		{
			response.sendRedirect("admin-manage-complaint.jsp");
		}
		else if(action.equalsIgnoreCase("adminViewAllComplaints"))
		{
			response.sendRedirect("admin-view-all-complaint.jsp");
		}
		else if(action.equalsIgnoreCase("adminViewSolvedComplaints"))
		{
			response.sendRedirect("admin-view-solved-complaint.jsp");
		}
		else if(action.equalsIgnoreCase("adminViewPendingComplaints"))
		{
			response.sendRedirect("admin-view-unsolved-complaint.jsp");
		}
	}
}

