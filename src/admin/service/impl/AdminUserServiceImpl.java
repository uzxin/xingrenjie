package admin.service.impl;

import org.hibernate.Transaction;

import admin.dao.AdminUserDao;
import admin.dao.impl.AdminUserDaoImpl;
import admin.domain.AdminUser;
import admin.service.AdminUserService;
import admin.utils.HibernateUtils;

public class AdminUserServiceImpl implements AdminUserService {
	private AdminUserDao dao = new AdminUserDaoImpl();
	//管理员登陆
	public AdminUser login(String username, String password) {
		Transaction tx = HibernateUtils.getCurrentSession().beginTransaction();//开启事务
		AdminUser user = dao.login(username,password);
		tx.commit();//提交事务
		return user;
	}

}
