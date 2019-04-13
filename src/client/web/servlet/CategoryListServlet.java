package client.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import client.domain.Advertisement;
import client.domain.Category_1;
import client.domain.Category_2;
import client.domain.Category_3;
import client.service.CategoryService;
import client.service.impl.CategoryServiceImpl;
@WebServlet("/categoryList")
public class CategoryListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CategoryService service = new CategoryServiceImpl();
		List<Category_1> list1 = service.getAllCategory_1();//一级分类列表
		List<Category_2> list2 = service.getAllCategory_2();//二级分类列表
		List<Category_3> list3 = service.getAllCategory_3();//二三级分类列表
		List<Advertisement> adverList = service.getAlladvertisement();//广告列表
		//将三级分类封装到二级分类中
		int i = 0;
		for (Category_2 category_2 : list2) {
			category_2.setList3(list3.subList(i, i+6));
			i+=6;
		}
		
		//向jsp页面传递数据
		request.setAttribute("list1", list1);//商品一级分类列表
		request.setAttribute("list2", list2);//商品二级分类列表
		request.setAttribute("adverList", adverList);//广告列表
		request.setAttribute("list3", list3);//商品三级分类列表
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}