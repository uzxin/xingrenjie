package admin.web.servlet;

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

import admin.domain.Category1;
import admin.domain.Product;
import admin.service.AdminCategoryService;
import admin.service.AdminProductService;
import admin.service.impl.AdminCategoryServiceImpl;
@WebServlet("/adminUpdateCategory")
public class AdminUpdateCategoryServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//封装数据
		Map<String, String[]> properties = request.getParameterMap();
		Category1 category = new Category1();
		try {
			BeanUtils.populate(category, properties);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}

		//传递数据给service层
		AdminCategoryService service = new AdminCategoryServiceImpl();
		service.updateCategory(category);

		//跳转到列表页面
		response.sendRedirect(request.getContextPath()+"/adminCategoryList1");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}