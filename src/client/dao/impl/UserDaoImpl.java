package client.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import client.dao.UserDao;
import client.domain.User;
import client.utils.HibernateUtils;

public class UserDaoImpl implements UserDao {

	//通过用户名和密码查找用户
	public User login(String username, String password) {
		Session session = HibernateUtils.getCurrentSession();//获取当前线程绑定的session
		//采用Criteria查询
		Criteria criteria = session.createCriteria(User.class);
		criteria.add(Restrictions.eq("username",username));
		criteria.add(Restrictions.eq("password",password));
		User user = (User) criteria.uniqueResult();
		return user;
	}

	//用户注册
	public void register(User user) {
		Session session = HibernateUtils.getCurrentSession();
		session.save(user);
	}

}
