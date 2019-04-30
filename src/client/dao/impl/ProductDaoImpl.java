package client.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import client.dao.ProductDao;
import client.domain.Product;
import client.utils.HibernateUtils;

public class ProductDaoImpl implements ProductDao {

	//通过pid获取商品集合
	public Product getProductByPid(Long pid) {
		Session session = HibernateUtils.getCurrentSession();
		Criteria criteria = session.createCriteria(Product.class);
		criteria.add(Restrictions.eq("pid", pid));
		return (Product) criteria.uniqueResult();
	}
}