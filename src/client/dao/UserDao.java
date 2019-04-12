package client.dao;

import client.domain.User;

public interface UserDao {
	//通过用户名和密码查找用户
	User login(String username, String password);
	//用户注册
	void register(User user);

}
