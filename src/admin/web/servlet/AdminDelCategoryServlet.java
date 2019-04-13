package admin.web.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.AdminCategoryService;
import admin.service.impl.AdminCategoryServiceImpl;
@WebServlet("/adminDelCategory")
public class AdminDelCategoryServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取要删除的商品编号
		String cid = request.getParameter("cid");
		AdminCategoryService service = new AdminCategoryServiceImpl();
		service.delCategoryByCid(cid);
		//页面跳转
		response.sendRedirect(request.getContextPath()+"/adminCategoryList1");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}