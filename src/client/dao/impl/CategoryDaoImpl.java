package client.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import client.dao.CategoryDao;
import client.domain.Advertisement;
import client.domain.Category_1;
import client.domain.Category_2;
import client.domain.Category_3;
import client.domain.Product;
import client.utils.HibernateUtils;

public class CategoryDaoImpl implements CategoryDao {

	//获取一级分类列表
	public List<Category_1> getAllCategory_1() {
		Session session = HibernateUtils.getCurrentSession();
		Criteria criteria = session.createCriteria(Category_1.class);
		return criteria.list();
	}

	//获取二级分类列表
	public List<Category_2> getAllCategory_2() {
		Session session = HibernateUtils.getCurrentSession();
		Criteria criteria = session.createCriteria(Category_2.class);
		return criteria.list();
	}

	//获取广告列表
	public List<Advertisement> getAlladvertisement() {
		Session session = HibernateUtils.getCurrentSession();
		Criteria criteria = session.createCriteria(Advertisement.class);
		return criteria.list();
	}

	//获取三级分类列表
	public List<Category_3> getAllCategory_3() {
		Session session = HibernateUtils.getCurrentSession();
		Criteria criteria = session.createCriteria(Category_3.class);
		return criteria.list();
	}

	//获取所有商品列表
	public List<Product> getAllProduct() {
		Session session = HibernateUtils.getCurrentSession();
		Criteria criteria = session.createCriteria(Product.class);
		return criteria.list();
	}


	

}
