package client.service;

import java.util.List;

import client.domain.Advertisement;
import client.domain.Category_1;
import client.domain.Category_2;
import client.domain.Category_3;
import client.domain.Product;

public interface CategoryService {
	//获取一级分类列表
	List<Category_1> getAllCategory_1();
	//获取二级分类列表
	List<Category_2> getAllCategory_2();
	//获取广告列表
	List<Advertisement> getAlladvertisement();
	//获取三级分类列表
	List<Category_3> getAllCategory_3();
	//获取所有商品列表
	List<Product> getAllProduct();
	
	

}
