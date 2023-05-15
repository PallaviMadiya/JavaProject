package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletThree
 */
@WebServlet("/ServletThree")
public class ServletThree extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletThree() {
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
		if(action.equalsIgnoreCase("Submit Student Info")){
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String email = request.getParameter("email");
			String contact = request.getParameter("contact");
			String gender = request.getParameter("gender");
			String password = request.getParameter("password");
			
			System.out.println("Student Information");
			System.out.println("Fist Name: "+fname);
			System.out.println("Last Name: "+lname);
			System.out.println("Email: "+email);
			System.out.println("Contact No: "+contact);
			System.out.println("Gender: "+gender);
			System.out.println("Password: "+password);
			
			request.getRequestDispatcher("pro_4_view_student_information.jsp").forward(request, response);
		}
	}

}
