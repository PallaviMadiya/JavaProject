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

import dao.ProductDao;
import model.ProductModel;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/ProductController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 512, maxFileSize = 1024 * 1024 * 512, maxRequestSize = 1024 * 1024* 512)
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductController() {
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
		if(action.equalsIgnoreCase("upload"))
		{
			ProductModel p = new ProductModel();
			String savePath = "F:\\eclipse\\Project\\src\\image";
			File fileSaveDir = new File(savePath);
			
			if(!fileSaveDir.exists())
			{
				fileSaveDir.mkdir();
			}
			
			Part file1 = request.getPart("image");
			String fileName = extractfilename(file1);
			file1.write(savePath + File.separator + fileName);
			String filePath = savePath + File.separator + fileName;
			
			String savePath2 = "F:\\eclipse\\Project\\src\\image";
			File imgSaveDir = new File(savePath2);
			
			if(!imgSaveDir.exists())
			{
				imgSaveDir.mkdir();
			}
			p.setSid(Integer.parseInt(request.getParameter("sid")));
			p.setImage(fileName);
			p.setPname(request.getParameter("pname"));
			p.setPprice(Integer.parseInt(request.getParameter("pprice")));
			p.setPcategory(request.getParameter("pcategory"));
			p.setPdesc(request.getParameter("pdesc"));
			ProductDao.insertProduct(p);
			response.sendRedirect("seller_home.jsp");
		}
		else if(action.equalsIgnoreCase("update"))
		{
			ProductModel p = new ProductModel();
			String savePath = "F:\\eclipse\\Project\\src\\image";
			File fileSaveDir = new File(savePath);
			
			if(!fileSaveDir.exists())
			{
				fileSaveDir.mkdir();
			}
			
			Part file1 = request.getPart("image");
			String fileName = extractfilename(file1);
			file1.write(savePath + File.separator + fileName);
			String filePath = savePath + File.separator + fileName;
			
			String savePath2 = "F:\\eclipse\\Project\\src\\image";
			File imgSaveDir = new File(savePath2);
			if(!imgSaveDir.exists())
			{
				imgSaveDir.mkdir();
			}
			p.setPid(Integer.parseInt(request.getParameter("pid")));
			p.setImage(fileName);
			p.setPname(request.getParameter("pname"));
			p.setPprice(Integer.parseInt(request.getParameter("pprice")));
			p.setPcategory(request.getParameter("pcategory"));
			p.setPdesc(request.getParameter("pdesc"));
			ProductDao.updateProduct(p);
			response.sendRedirect("seller_manage_product.jsp");
		}
	}

}
