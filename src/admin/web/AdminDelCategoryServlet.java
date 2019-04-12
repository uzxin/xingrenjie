package admin.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.AdminCategoryService;
@WebServlet("/adminDelCategory")
public class AdminDelCategoryServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取要删除的商品编号
		String cid = request.getParameter("cid");
		AdminCategoryService service = new AdminCategoryService();
		try {
			service.delCategoryByPid(cid);
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