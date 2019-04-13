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
import admin.domain.Product;
import admin.service.AdminProductService;
import admin.service.impl.AdminProductServiceImpl;
@WebServlet("/adminUpdateProductUI")
public class AdminUpdateProductUIServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//获得要查询Product的pid
		String pid = request.getParameter("pid");
		//传递pid查询商品信息
		AdminProductService service = new AdminProductServiceImpl();
		Product product = service.findProductByPid(pid);
		//获得所有的商品的类别数据
		List<Category3> categoryList = service.findAllCategory();

		request.setAttribute("categoryList", categoryList);
		request.setAttribute("product", product);

		request.getRequestDispatcher("/admin/product/edit.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}