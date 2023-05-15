package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Pro_8_Dao;
import model.Pro_8_Student;

/**
 * Servlet implementation class ServletEight
 */
@WebServlet("/ServletEight")
public class ServletEight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEight() {
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
		if(action.equalsIgnoreCase("register")) {
			Pro_8_Student s = new Pro_8_Student();
			s.setFname(request.getParameter("fname"));
			s.setLname(request.getParameter("lname"));
			s.setEmail(request.getParameter("email"));
			s.setContact(Long.parseLong(request.getParameter("contact")));
			s.setGender(request.getParameter("gender"));
			s.setPassword(request.getParameter("password"));
			System.out.println(request.getParameter("gender"));
			Pro_8_Dao.register(s);
			response.sendRedirect("Pro_8_Crud_Operation.jsp");
		}
		else if(action.equalsIgnoreCase("edit")) {
			Pro_8_Student s = new Pro_8_Student();
			s.setId(Integer.parseInt(request.getParameter("id")));
			s.setFname(request.getParameter("fname"));
			s.setLname(request.getParameter("lname"));
			s.setEmail(request.getParameter("email"));
			s.setContact(Long.parseLong(request.getParameter("contact")));
			s.setGender(request.getParameter("gender"));
			s.setPassword(request.getParameter("password"));
			System.out.println(request.getParameter("gender"));
			Pro_8_Dao.editStudentDetail(s);
			response.sendRedirect("Pro_8_Crud_Operation.jsp");
		}
	}
	

}
