package admin.dao;

import admin.domain.AdminUser;

public interface AdminUserDao {
	//管理员登陆
	AdminUser login(String username, String password);

}
