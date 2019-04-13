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
import admin.domain.Category2;
import admin.service.AdminCategoryService;
import admin.service.impl.AdminCategoryServiceImpl;
@WebServlet("/adminCategoryList2")
public class AdminCategoryList2Servlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AdminCategoryService service = new AdminCategoryServiceImpl();
		//获取二级分类列表
		List<Category2> categoryList = null;
		categoryList = service.getCategory_2();
		
		request.setAttribute("categoryList", categoryList);
		request.getRequestDispatcher("/admin/category/list.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}