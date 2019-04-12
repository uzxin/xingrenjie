package admin.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.domain.Category;
import admin.service.AdminCategoryService;
@WebServlet("/adminAddCategory")
public class AdminAddCategoryServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取要添加的分类名称
		request.setCharacterEncoding("UTF-8");
		String cname = request.getParameter("cname");
		//手动设置分类的编号（cid）
		Category category = new Category();
		category.setCid(UUID.randomUUID().toString());//生成随机字符串
		category.setCname(cname);
		//封装好数据传递给service层
		AdminCategoryService service = new AdminCategoryService();
		try {
			service.addCategory(category);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//页面跳转
		response.sendRedirect(request.getContextPath()+"/adminCategoryList");
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}