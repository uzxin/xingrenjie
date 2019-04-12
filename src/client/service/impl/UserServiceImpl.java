package client.service.impl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import client.dao.UserDao;
import client.dao.impl.UserDaoImpl;
import client.domain.User;
import client.service.UserService;
import client.utils.HibernateUtils;

public class UserServiceImpl implements UserService {
	private UserDao dao = new UserDaoImpl();
	
	//通过用户名和密码查询用户
	public User login(String username, String password) {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tx = session.beginTransaction();//开启事务
		//调用dao层方法进行查询
		User user = dao.login(username, password);
		tx.commit();//提交事务
		return user;
	}

	//用户注册
	public void register(User user) {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tx = session.beginTransaction();//开启事务
		dao.register(user);
		tx.commit();
	}

}
