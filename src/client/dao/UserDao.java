package client.dao;

import client.domain.User;

public interface UserDao {
	//通过用户名查找用户
	User login(String username);
	//用户注册
	void register(User user);
	//异步判断用户名是否存在
	Long checkUsernameIsExist(String username);

}
