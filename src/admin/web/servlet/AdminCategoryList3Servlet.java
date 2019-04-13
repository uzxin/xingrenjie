package admin.web.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.domain.Category1;
import admin.domain.Category3;
import admin.service.AdminCategoryService;
import admin.service.impl.AdminCategoryServiceImpl;
@WebServlet("/adminCategoryList3")
public class AdminCategoryList3Servlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AdminCategoryService service = new AdminCategoryServiceImpl();
		//获取三级分类列表
		List<Category3> categoryList = null;
		categoryList = service.getCategory_3();
		
		request.setAttribute("categoryList", categoryList);
		request.getRequestDispatcher("/admin/category/list.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}