package admin.service;

import admin.domain.AdminUser;

public interface AdminUserService {
	//管理员登陆
	AdminUser login(String username, String password);

}
