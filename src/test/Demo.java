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
		
		
		
		
		
		/*Session session = HibernateUtils.openSession();
		Transaction tx = session.beginTransaction();
		Criteria c = session.createCriteria(Product.class);
		c.add(Restrictions.eq("pname", "小米 4c 标准版"));
		Product p = (Product) c.uniqueResult();
		tx.commit();
		System.out.println(p.getPdesc());*/
		
		
		
		/*QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product";
		List<Product> p =null;
		try {
			p = runner.query(sql, new BeanListHandler<Product>(Product.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		for (Product product : p) {
			System.out.println(product.getPname());
		}*/
	}
	
	
	
}
	
