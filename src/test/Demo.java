package test;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.junit.Test;

import admin.domain.AdminUser;
import admin.domain.Category1;
import admin.domain.Category2;
import admin.domain.Product;
import admin.utils.DataSourceUtils;
import admin.utils.HibernateUtils;
import client.domain.User;

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
	
}
	
