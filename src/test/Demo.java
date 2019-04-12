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

import admin.utils.DataSourceUtils;
import client.domain.User;

//测试Hibernate框架
public class Demo {

	/*@Test
	//增加用户姓名
	public void fun1(){
		//加载配置文件
		Configuration conf = new Configuration().configure();
		SessionFactory sessionFactory = conf.buildSessionFactory();
		
		Session session = sessionFactory.openSession();
		//开启事务
		Transaction tx = session.beginTransaction();
		//----------------------------------------------
		Criteria criteria = session.createCriteria(User.class);
		criteria.add(Restrictions.eq("username","youxin"));
		criteria.add(Restrictions.eq("password","123"));
		User user = (User) criteria.uniqueResult();
		//System.out.println(criteria.uniqueResult());
		System.out.println(user.getUsername() + user.getPassword());
		//事务提交、关闭资源
		tx.commit();
		session.close();
		sessionFactory.close();
	}*/
	
	
	@Test
	public void fun2() throws SQLException{
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select *from user";
		List<User> userList = runner.query(sql, new BeanListHandler<User>(User.class));
		for (User user : userList) {
			System.out.println(user.getUsername());
		}
	}
}
