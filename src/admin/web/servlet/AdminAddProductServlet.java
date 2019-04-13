package admin.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import admin.domain.Product;
import admin.service.AdminProductService;
import admin.service.impl.AdminProductServiceImpl;
@WebServlet("/adminAddProduct")
public class AdminAddProductServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		//1、获取数据
		Map<String, String[]> properties = request.getParameterMap();
		//2、使用BeanUtils工具封装数据
		Product product = new Product();
		try {
			BeanUtils.populate(product, properties);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		
		//手动设置表单中没有数据
		product.setPimage("products/1/c_0033.jpg");//商品图片
		//格式化日期
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String pdate = format.format(new Date());
		product.setPdate(pdate);//上架日期
		product.setPflag(0);//是否下架
		
		//3、传递数据给service层
		AdminProductService service = new AdminProductServiceImpl();
		service.addProduct(product);
		
		//跳转到列表页面
		response.sendRedirect(request.getContextPath()+"/adminProductList");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}