package admin.service.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import admin.dao.AdminProductDao;
import admin.dao.impl.AdminProductDaoImpl;
import admin.domain.Category3;
import admin.domain.Condition;
import admin.domain.Product;
import admin.service.AdminProductService;
import admin.utils.HibernateUtils;

public class AdminProductServiceImpl implements AdminProductService {
	private AdminProductDao dao = new AdminProductDaoImpl();
	//获取商品分类列表
	public List<Category3> findAllCategory() {
		HibernateUtils.getCurrentSession().beginTransaction();//开启事务
		List<Category3> categoryList = dao.findAllCategory();
		HibernateUtils.getCurrentSession().beginTransaction().commit();//提交事务
		return categoryList;
	}

	//获取商品列表
	public List<Product> findAllProduct() {
		HibernateUtils.getCurrentSession().beginTransaction();//开启事务
		List<Product> productList = dao.findAllProduct();
		HibernateUtils.getCurrentSession().beginTransaction().commit();//提交事务
		return productList;
	}

	//添加商品
	public void addProduct(Product product) {
		Session session = HibernateUtils.getCurrentSession();//获得sessio对象
		Transaction tx = session.beginTransaction();//开启事务
		dao.addProduct(product);
		tx.commit();//提交事务
	}

	//删除商品
	public void delProductByPid(String pid) {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tx = session.beginTransaction();
		dao.delProductByPid(pid);
		tx.commit();
	}

	//根据pid查找商品
	public Product findProductByPid(String pid) {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tx = session.beginTransaction();
		Product product = dao.findProductByPid(pid);
		tx.commit();
		return product;
	}

	//更新商品信息
	public void updateProduct(Product product) {
		Session session = HibernateUtils.getCurrentSession();//获得sessio对象
		Transaction tx = session.beginTransaction();//开启事务
		dao.updateProduct(product);
		tx.commit();
		
	}

	//根据条件筛选商品列表
	public List<Product> findProductListByCondition(Condition condition) {
		return dao.findProductListByCondition(condition);
	}

	
}
