package client.web.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import client.domain.Product;
import client.service.ProductService;
import client.service.impl.ProductServiceImpl;

public class ProductAction extends ActionSupport{
	
	//跳转到商品详情页
	public String toProductInfo() throws Exception {
		Long pid = Long.valueOf(ServletActionContext.getRequest().getParameter("pid"));
		ProductService service = new ProductServiceImpl();
		Product product = service.getProductByPid(pid);
		ActionContext.getContext().put("product", product);
		return "toProductInfo";
	}
	
	
	
	
	
	
	

	
	
}
