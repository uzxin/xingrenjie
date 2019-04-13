package admin.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import admin.dao.AdminUserDao;
import admin.domain.AdminUser;
import admin.utils.HibernateUtils;

public class AdminUserDaoImpl implements AdminUserDao {

	//管理员登陆
	public AdminUser login(String username, String password) {
		Session session = HibernateUtils.getCurrentSession();
		Criteria criteria = session.createCriteria(AdminUser.class);
		criteria.add(Restrictions.eq("username", username));
		criteria.add(Restrictions.eq("password", password));
		return (AdminUser) criteria.uniqueResult();
	}

}
