package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EmployeeDao;
import model.Employee;

/**
 * Servlet implementation class EmployeeController
 */
@WebServlet("/EmployeeController")
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("register")) {
			Employee e = new Employee();
			e.setName(request.getParameter("name"));
			e.setContact(Long.parseLong(request.getParameter("contact")));
			e.setGender(request.getParameter("gender"));
			e.setDob(request.getParameter("dob"));
			e.setAddress(request.getParameter("address"));
			e.setEmail(request.getParameter("email"));
			e.setPassword(request.getParameter("password"));
			
			EmployeeDao.register(e);
			response.sendRedirect("index.jsp");
		}
		
		else if(action.equalsIgnoreCase("update")) {
			Employee e = new Employee();
			e.setEid(Integer.parseInt(request.getParameter("eid")));
			e.setName(request.getParameter("name"));
			e.setContact(Long.parseLong(request.getParameter("contact")));
			e.setGender(request.getParameter("gender"));
			e.setDob(request.getParameter("dob"));
			e.setAddress(request.getParameter("address"));
			e.setEmail(request.getParameter("email"));
			e.setPassword(request.getParameter("password"));
			
			EmployeeDao.updateEmployee(e);
			response.sendRedirect("index.jsp");
		}
		else if(action.equalsIgnoreCase("login")) {
			Employee e = new Employee();
			e.setEmail(request.getParameter("email"));
			e.setPassword(request.getParameter("password"));
			System.out.println(request.getParameter("email"));
			System.out.println(request.getParameter("password"));
			System.out.println("BeforeDao");

			Employee e1 = EmployeeDao.login(e);
			System.out.println("AfterDao");
			if(e1 == null) {
				System.out.println("Null Object Controller");
				request.setAttribute("msg1", "Email Or Password Is Incorrect!");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			else {
				System.out.println("Seesion Created- Login");
				HttpSession session = request.getSession();
				session.setAttribute("data", e1);
				request.getRequestDispatcher("home.jsp").forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
