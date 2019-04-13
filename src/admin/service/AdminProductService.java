package admin.service;

import java.util.List;

import admin.domain.Category3;
import admin.domain.Condition;
import admin.domain.Product;

public interface AdminProductService {
	//获取商品分类列表
	List<Category3> findAllCategory();
	//获取商品列表
	List<Product> findAllProduct();
	//添加商品
	void addProduct(Product product);
	//删除商品
	void delProductByPid(String pid);
	//根据pid查找商品
	Product findProductByPid(String pid);
	//更新商品信息
	void updateProduct(Product product);
	//通过条件筛选商品列表
	List<Product> findProductListByCondition(Condition condition);

}
