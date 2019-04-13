package admin.service.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import admin.dao.AdminCategoryDao;
import admin.dao.impl.AdminCategoryDaoImpl;
import admin.domain.Category1;
import admin.domain.Category2;
import admin.domain.Category3;
import admin.service.AdminCategoryService;
import admin.utils.HibernateUtils;

public class AdminCategoryServiceImpl implements AdminCategoryService {
	private AdminCategoryDao categoryDao = new AdminCategoryDaoImpl();
	
	//获取一级分类列表
	public List<Category1> getCategory_1() {
		HibernateUtils.getCurrentSession().beginTransaction();//开启事务
		List<Category1> category_1 = categoryDao.getCategory_1();
		HibernateUtils.getCurrentSession().beginTransaction().commit();//提交事务
		return category_1;
	}
	//获取二级分类列表
	public List<Category2> getCategory_2() {
		HibernateUtils.getCurrentSession().beginTransaction();//开启事务
		List<Category2> category_2 = categoryDao.getCategory_2();
		HibernateUtils.getCurrentSession().beginTransaction().commit();//提交事务
		return category_2;
	}
	//获取三级分类列表
	public List<Category3> getCategory_3() {
		HibernateUtils.getCurrentSession().beginTransaction();//开启事务
		List<Category3> category_3 = categoryDao.getCategory_3();
		HibernateUtils.getCurrentSession().beginTransaction().commit();//提交事务
		return category_3;
	}
	//添加一级分类
	public void addCategory(Category1 category) {
		Session session = HibernateUtils.getCurrentSession();//获取session对象
		Transaction tx = session.beginTransaction();//开启事务
		categoryDao.addCategory(category);
		tx.commit();//提交事务
	}
	//根据cid删除一级分类
	public void delCategoryByCid(String cid) {
		Session session = HibernateUtils.getCurrentSession();//获取session对象
		Transaction tx = session.beginTransaction();//开启事务
		categoryDao.delCategoryByCid(cid);
		tx.commit();//提交事务
	}
	//根据cid查找一级分类
	public Category1 findCategoryByCid(String cid) {
		HibernateUtils.getCurrentSession().beginTransaction();//开启事务
		Category1 categor1 = categoryDao.findCategoryByCid(cid);
		HibernateUtils.getCurrentSession().beginTransaction().commit();//提交事务
		return categor1;
	}
	//更新一级分类名字
	public void updateCategory(Category1 category) {
		Session session = HibernateUtils.getCurrentSession();//获取session对象
		Transaction tx = session.beginTransaction();//开启事务
		categoryDao.updateCategory(category);
		tx.commit();//提交事务
		
	}

}
