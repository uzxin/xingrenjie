package admin.service;

import java.sql.SQLException;

import admin.dao.AdminUserDao;
import admin.domain.AdminUser;

public class AdminUserService {

	//查询管理员账户
	public AdminUser login(String username, String password) throws SQLException {
		AdminUserDao dao = new AdminUserDao();
		return dao.login(username,password);
	}

}
