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
	
	//通过用户名查询用户
	public User login(User user) {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tx = session.beginTransaction();//开启事务
		//调用dao层方法进行查询
		User u = dao.login(user.getUsername());
		tx.commit();//提交事务
		return u;
	}

	//用户注册
	public void register(User user) {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tx = session.beginTransaction();//开启事务
		dao.register(user);
		tx.commit();
	}

	//异步判断用户名是否存在
	public boolean checkUsernameIsExist(String username) {
		Long isExist = dao.checkUsernameIsExist(username);
		return isExist>0?true:false;
	}

}
