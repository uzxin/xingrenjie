package test;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.junit.Test;
import admin.utils.HibernateUtils;
import client.service.impl.CategoryServiceImpl;
import client.service.impl.ProductServiceImpl;
import client.utils.DataSourceUtils;
import client.domain.*;

//测试Hibernate框架
public class Demo {

	@Test
	public void fun4(){
		Session session = HibernateUtils.openSession();
		Transaction tx = session.beginTransaction();
		Product p= session.get(Product.class, "53l");
		p.setPname("测试测试222");
		session.update(p);
		tx.commit();
	}
	
	@Test
	public void fun22(){
		List<Product> list = new CategoryServiceImpl().getAllProduct();
		System.out.println(list.size());
		for (Product product : list) {
			System.out.println(product.getPname());
		}
	}
	@Test
	public void fun21(){
		Long pid = 43l;
		Session session = client.utils.HibernateUtils.openSession();
		Criteria criteria = session.createCriteria(Product.class);
		criteria.add(Restrictions.eq("pid", pid));
		Product p = (Product) criteria.uniqueResult();
		System.out.println(p.getPname());
	}
	
	@Test
	public void fun123321(){
		Long pid = 1l;
		Product p =new ProductServiceImpl().getProductByPid(pid);
		System.out.println(p.getPname());
	}
	
}
	
