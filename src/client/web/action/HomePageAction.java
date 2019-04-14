package client.web.action;

import java.util.List;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import client.domain.Advertisement;
import client.domain.Category_1;
import client.domain.Category_2;
import client.domain.Category_3;
import client.service.CategoryService;
import client.service.impl.CategoryServiceImpl;

public class HomePageAction extends ActionSupport{
	//获取商品列表
	public String execute() throws Exception {
		CategoryService service = new CategoryServiceImpl();
		List<Category_1> list1 = service.getAllCategory_1();//一级分类列表
		List<Category_2> list2 = service.getAllCategory_2();//二级分类列表
		List<Category_3> list3 = service.getAllCategory_3();//三级分类列表
		List<Advertisement> adverList = service.getAlladvertisement();//广告列表
		//将三级分类封装到二级分类中
		int i = 0;
		for (Category_2 category_2 : list2) {
			category_2.setList3(list3.subList(i, i+6));
			i+=6;
		}
		//向jsp页面传递数据
		ActionContext.getContext().put("list1", list1);
		ActionContext.getContext().put("list2", list2);
		ActionContext.getContext().put("adverList", adverList);
		ActionContext.getContext().put("list3", list3);
		//跳转到首页
		return "toindex";
	}







	
}
