package client.service;

import client.domain.User;

public interface UserService {
	//通过用户名和密码查询用户
	User login(String username, String password);
	//用户注册
	void register(User user);

}
