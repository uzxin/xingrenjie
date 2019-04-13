package admin.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import admin.dao.AdminCategoryDao;
import admin.domain.Category1;
import admin.domain.Category2;
import admin.domain.Category3;
import admin.utils.HibernateUtils;

public class AdminCategoryDaoImpl implements AdminCategoryDao {

	//获取一级分类列表
	public List<Category1> getCategory_1() {
		Session session = HibernateUtils.getCurrentSession();
		Criteria c = session.createCriteria(Category1.class);
		return c.list();
	}

	//获取二级分类列表
	public List<Category2> getCategory_2() {
		Session session = HibernateUtils.getCurrentSession();
		Criteria c = session.createCriteria(Category2.class);
		return c.list();
	}

	//获取三级分类列表
	public List<Category3> getCategory_3() {
		Session session = HibernateUtils.getCurrentSession();
		Criteria c = session.createCriteria(Category3.class);
		return c.list();
	}

	//添加一级分类
	public void addCategory(Category1 category) {
		HibernateUtils.getCurrentSession().save(category);
	}

	//根据cid删除一级分类
	public void delCategoryByCid(String cid) {
		Session session = HibernateUtils.getCurrentSession();
		Category1 c = session.get(Category1.class, cid);
		session.delete(c);
	}

	//根据cid查找一级分类
	public Category1 findCategoryByCid(String cid) {
		Session session = HibernateUtils.getCurrentSession();
		Criteria criteria = session.createCriteria(Category1.class);
		criteria.add(Restrictions.eq("cid", cid));//添加查询条件
		return (Category1) criteria.uniqueResult();
	}

	//更新一级分类名字
	public void updateCategory(Category1 category) {
		Session session = HibernateUtils.getCurrentSession();
		Category1 c = session.get(Category1.class, category.getCid());
		c.setCname(category.getCname());
		session.update(c);
	}

}
