package admin.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import admin.domain.Category1;
import admin.domain.Category3;
import admin.domain.Condition;
import admin.domain.Product;
import admin.service.AdminProductService;
import admin.service.impl.AdminProductServiceImpl;
@WebServlet("/adminSearchProductList")
public class AdminSearchProductListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		//1、收集表单数据
		Map<String, String[]> properties = request.getParameterMap();
		//2、将散装的查询数据封装到一个VO实体中
		Condition condition = new Condition();
		try {
			BeanUtils.populate(condition, properties);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		//3、将实体传递给service层
		AdminProductService service = new AdminProductServiceImpl();
		List<Product> productList = null;
		productList = service.findProductListByCondition(condition);
		//准备商品类别
		//获得所有的商品的类别数据
		List<Category3> categoryList = service.findAllCategory();
		request.setAttribute("condition", condition);
		request.setAttribute("categoryList", categoryList);
		request.setAttribute("productList", productList);
		request.getRequestDispatcher("/admin/product/list.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
