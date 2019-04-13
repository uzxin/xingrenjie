package admin.web.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.AdminProductService;
import admin.service.impl.AdminProductServiceImpl;
@WebServlet("/adminDelProduct")
public class AdminDelProductServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//获取要删除的pid
		String pid = request.getParameter("pid");
		
		//传递pid到service层
		AdminProductService service = new AdminProductServiceImpl();
		service.delProductByPid(pid);
		
		response.sendRedirect(request.getContextPath()+"/adminProductList");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}