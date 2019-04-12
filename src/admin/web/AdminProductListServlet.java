package admin.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.domain.Category;
import admin.domain.Product;
import admin.service.AdminProductService;

@WebServlet("/adminProductList")
public class AdminProductListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminProductService service = new AdminProductService();
		//获得所有的商品的类别数据
		List<Category> categoryList = null;
		try {
			categoryList = service.findAllCategory();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("categoryList", categoryList);
		
		//获取商品列表并返回给list.jsp页面
		List<Product> productList = null;
		try {
			productList = service.findAllProduct();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("productList", productList);
		request.getRequestDispatcher("/admin/product/list.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}