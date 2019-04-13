package admin.web.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.domain.Category1;
import admin.service.AdminCategoryService;
import admin.service.impl.AdminCategoryServiceImpl;
@WebServlet("/adminAddCategory")
public class AdminAddCategoryServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取要添加的分类名称
		request.setCharacterEncoding("UTF-8");
		String cname = request.getParameter("cname");
		//封装数据
		Category1 category = new Category1();
		category.setCname(cname);
		//封装好数据传递给service层
		AdminCategoryService service = new AdminCategoryServiceImpl();
		service.addCategory(category);
		//页面跳转
		response.sendRedirect(request.getContextPath()+"/adminCategoryList1");
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}