package admin.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.domain.Category;
import admin.service.AdminCategoryService;
@WebServlet("/adminUpdateCategoryUI")
public class AdminUpdateCategoryUIServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid = request.getParameter("cid");
		//根据cid查找分类
		AdminCategoryService service = new AdminCategoryService();
		Category category = null;
		try {
			category = service.findCategoryByCid(cid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("category", category);
		request.getRequestDispatcher("/admin/category/edit.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}