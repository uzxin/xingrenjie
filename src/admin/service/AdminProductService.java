package admin.service;

import java.sql.SQLException;
import java.util.List;

import admin.dao.AdminProductDao;
import admin.domain.Category;
import admin.domain.Condition;
import admin.domain.Product;

public class AdminProductService {
	//获取商品列表
	public List<Product> findAllProduct() throws SQLException {
		AdminProductDao dao = new AdminProductDao();
		return dao.findAllProduct();
	}
	//获取分类列表
	public List<Category> findAllCategory() throws SQLException {
		AdminProductDao dao = new AdminProductDao();
		return dao.findAllCategory();
	}
	//添加商品
	public void addProduct(Product product) throws SQLException {
		AdminProductDao dao = new AdminProductDao();
		dao.addProduct(product);
	}
	//根据pid查询商品对象
	public Product findProductByPid(String pid) throws SQLException {
		AdminProductDao dao = new AdminProductDao();
		return dao.findProductByPid(pid);
	}
	//更新商品
	public void updateProduct(Product product) throws SQLException {
		AdminProductDao dao = new AdminProductDao();
		dao.updateProduct(product);
	}
	//根据pid删除商品
	public void delProductByPid(String pid) throws SQLException {
		AdminProductDao dao = new AdminProductDao();
		dao.delProductByPid(pid);
	}
	//根据条件查询商品列表
	public List<Product> findProductListByCondition(Condition condition) throws SQLException {
		AdminProductDao dao = new AdminProductDao();
		return dao.findProductListByCondition(condition);
	}

}
