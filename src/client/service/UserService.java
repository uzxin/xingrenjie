package client.service;

import client.domain.User;

public interface UserService {
	//通过用户名查询用户
	User login(User user);
	//用户注册
	void register(User user);
	//异步判断用户名是否存在
	boolean checkUsernameIsExist(String username);

}
