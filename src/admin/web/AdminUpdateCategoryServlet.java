package admin.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import admin.domain.Category;
import admin.domain.Product;
import admin.service.AdminCategoryService;
import admin.service.AdminProductService;
@WebServlet("/adminUpdateCategory")
public class AdminUpdateCategoryServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//封装数据
		Map<String, String[]> properties = request.getParameterMap();
		Category category = new Category();
		try {
			BeanUtils.populate(category, properties);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}

		//传递数据给service层
		AdminCategoryService service = new AdminCategoryService();
		try {
			service.updateCategory(category);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		//跳转到列表页面
		response.sendRedirect(request.getContextPath()+"/adminCategoryList");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}