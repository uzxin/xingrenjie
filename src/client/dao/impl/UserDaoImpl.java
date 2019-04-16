package client.dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import client.dao.UserDao;
import client.domain.User;
import client.utils.DataSourceUtils;
import client.utils.HibernateUtils;

public class UserDaoImpl implements UserDao {

	//通过用户名查找用户
	public User login(String username) {
		Session session = HibernateUtils.getCurrentSession();//获取当前线程绑定的session
		//采用Criteria查询
		Criteria criteria = session.createCriteria(User.class);
		criteria.add(Restrictions.eq("username",username));
		User user = (User) criteria.uniqueResult();
		return user;
	}

	//用户注册
	public void register(User user) {
		Session session = HibernateUtils.getCurrentSession();
		session.save(user);
	}

	//异步判断用户名是否存在
	public Long checkUsernameIsExist(String username) {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from user where username=?";
		Long query = null;
		try {
			 query =(Long) runner.query(sql, new ScalarHandler(),username);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return query;
	}

}
