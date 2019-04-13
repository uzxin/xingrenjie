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
import admin.service.AdminProductService;
import admin.service.impl.AdminProductServiceImpl;
@WebServlet("/adminAddProductUI")
public class AdminAddProductUIServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//获得所有的商品的类别数据
		AdminProductService service = new AdminProductServiceImpl();
		List<Category3> categoryList = null;
		categoryList = service.findAllCategory();
		request.setAttribute("categoryList", categoryList);
		request.getRequestDispatcher("/admin/product/add.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
