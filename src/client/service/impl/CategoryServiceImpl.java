package client.service.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import client.dao.CategoryDao;
import client.dao.impl.CategoryDaoImpl;
import client.domain.Advertisement;
import client.domain.Category_1;
import client.domain.Category_2;
import client.domain.Category_3;
import client.domain.Product;
import client.service.CategoryService;
import client.utils.HibernateUtils;

public class CategoryServiceImpl implements CategoryService {

	private CategoryDao dao = new CategoryDaoImpl();
	//获取一级分类列表
	public List<Category_1> getAllCategory_1() {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tx = session.beginTransaction();
		List<Category_1> list = dao.getAllCategory_1();
		tx.commit();
		return list;
	}
	//获取二级分类列表
	public List<Category_2> getAllCategory_2() {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tx = session.beginTransaction();
		List<Category_2> list = dao.getAllCategory_2();
		tx.commit();
		return list;
	}
	//获取广告列表
	public List<Advertisement> getAlladvertisement() {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tx = session.beginTransaction();
		List<Advertisement> list = dao.getAlladvertisement();
		tx.commit();
		return list;
	}
	//获取三级分类列表
	public List<Category_3> getAllCategory_3() {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tx = session.beginTransaction();
		List<Category_3> list = dao.getAllCategory_3();
		tx.commit();
		return list;
	}
	//获得所有分类列表
	public List<Product> getAllProduct() {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tx = session.beginTransaction();
		List<Product> list = dao.getAllProduct();
		tx.commit();
		return list;
	}
	
	
}
