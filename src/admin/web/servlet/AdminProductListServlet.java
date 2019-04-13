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

@WebServlet("/adminProductList")
public class AdminProductListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminProductService service = new AdminProductServiceImpl();
		//获得所有的商品的类别数据
		List<Category3> categoryList = service.findAllCategory();
		request.setAttribute("categoryList", categoryList);
		
		//获取商品列表并返回给list.jsp页面
		List<Product> productList = service.findAllProduct();
		request.setAttribute("productList", productList);
		request.getRequestDispatcher("/admin/product/list.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}