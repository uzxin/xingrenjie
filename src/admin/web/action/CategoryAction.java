package admin.web.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import admin.domain.Category1;
//关于分类的一系列操作
public class CategoryAction extends ActionSupport implements ModelDriven<Category1>{
	private Category1 category = new Category1();
	
	public String getCategory_1() throws Exception {
		
		return super.execute();
	}







	public Category1 getModel() {
		return category;
	}

}
