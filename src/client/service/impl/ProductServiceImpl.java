package client.service.impl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import client.dao.ProductDao;
import client.dao.impl.ProductDaoImpl;
import client.domain.Product;
import client.service.ProductService;
import client.utils.HibernateUtils;

public class ProductServiceImpl implements ProductService {
	private ProductDao dao = new ProductDaoImpl();
	
	//通过pid获取商品集合
	public Product getProductByPid(Long pid) {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tx = session.beginTransaction();
		Product p = dao.getProductByPid(pid);
		tx.commit();
		return p;
	}

}
