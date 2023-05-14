package controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.EventDao;
import model.Event;

/**
 * Servlet implementation class EventController
 */
@WebServlet("/EventController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 512, maxFileSize = 1024 * 1024 * 512, maxRequestSize = 1024 * 1024* 512)
public class EventController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EventController() {
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

	private String extractfilename(Part file) {
		String cd = file.getHeader("content-disposition");
		System.out.println(cd);
		String[] items = cd.split(";");
		for (String string : items) {
			if (string.trim().startsWith("filename")) {
				return string.substring(string.indexOf("=") + 2, string.length() - 1);
			}
		}
		return "";
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		System.out.println(action);
		if(action.equalsIgnoreCase("Add Event"))
		{
			Event e = new Event();
			String savePath = "D:\\java\\E-society\\src\\main\\webapp\\eimage";
			File fileSaveDir = new File(savePath);
			
			if(!fileSaveDir.exists())
			{
				fileSaveDir.mkdir();
			}
			
			Part file1 = request.getPart("e_image");
			String fileName = extractfilename(file1);
			file1.write(savePath + File.separator + fileName);
			String filePath = savePath + File.separator + fileName;
			
			String savePath2 = "D:\\java\\E-society\\src\\main\\webapp\\eimage";
			File imgSaveDir = new File(savePath2);
			
			if(!imgSaveDir.exists())
			{
				imgSaveDir.mkdir();
			}
			e.setE_name(request.getParameter("e_name"));
			e.setE_date(request.getParameter("e_date"));
			e.setE_desc(request.getParameter("e_desc"));
			e.setE_image(fileName);
			EventDao.insertEvent(e);
			response.sendRedirect("admin-view-all-event.jsp");
		}
		else if (action.equalsIgnoreCase("Edit Event")) 
		{
			Event e = new Event();
			String savePath = "D:\\java\\E-society\\src\\main\\webapp\\eimage";
			File fileSaveDir = new File(savePath);
			
			if(!fileSaveDir.exists())
			{
				fileSaveDir.mkdir();
			}
			
			Part file1 = request.getPart("e_image");
			String fileName = extractfilename(file1);
			file1.write(savePath + File.separator + fileName);
			String filePath = savePath + File.separator + fileName;
			
			String savePath2 = "D:\\java\\E-society\\src\\main\\webapp\\eimage";
			File imgSaveDir = new File(savePath2);
			
			if(!imgSaveDir.exists())
			{
				imgSaveDir.mkdir();
			}
			e.setEid(Integer.parseInt(request.getParameter("eid")));
			e.setE_name(request.getParameter("e_name"));
			e.setE_date(request.getParameter("e_date"));
			e.setE_desc(request.getParameter("e_desc"));
			e.setE_image(fileName);
			EventDao.updateEvent(e);
			response.sendRedirect("admin-view-all-event.jsp");
		}
	}
	


}
