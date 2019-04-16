package client.web.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import client.domain.User;
import client.service.UserService;
import client.service.impl.UserServiceImpl;

public class UserAction extends ActionSupport implements ModelDriven<User>{
	private String checkCode;//登陆时输入的验证码
	private User user = new User();//用户对象
	
	//用户登录
	public String login() throws Exception {
		//获得生成图片的文字的验证码
		String checkCode_session = (String) ActionContext.getContext().getSession().get("checkcode_session");
		//比对页面的和生成图片的文字的验证码是否一致
		if(!checkCode_session.equals(checkCode)){
			ActionContext.getContext().put("loginInfo", "您的验证码不正确");
			return "toLogin";//跳转到登陆界面
		}
		//验证码通过后，在进行用户验证
		//进行该用户查询
		UserService service = new UserServiceImpl();
		User user_exit = service.login(user);
		if(user_exit == null){
			ActionContext.getContext().put("loginInfo", "用户名不存在");
			return "toLogin";
		}else{
			if(!user_exit.getPassword().equals(user.getPassword())){
				ActionContext.getContext().put("loginInfo", "密码错误");
				return "toLogin";//跳转到登陆界面
			}else{
				ActionContext.getContext().getSession().put("user", user);//将用户信息存入session
				return "toindex";//登陆成功，跳转到首页
			}
		}
	}
	
	//用户注册
	public String register() throws Exception {
		//传递数据到service层
		UserService service = new UserServiceImpl();
		service.register(user);
		ActionContext.getContext().getSession().put("user", user);//将用户信息存入session
		return "toindex";//注册成功跳转到首页
	}
	
	//异步判断用户名是否已经存在
	public void checkUsernameIsExist() throws Exception {
		String username = ServletActionContext.getRequest().getParameter("username");
		UserService service = new UserServiceImpl();
		boolean isExist = service.checkUsernameIsExist(username);
		
		ServletActionContext.getResponse().getWriter().write("{\"isExist\":"+isExist+"}");
	}

	
	
	public String getCheckCode() {
		return checkCode;
	}

	public void setCheckCode(String checkCode) {
		this.checkCode = checkCode;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public User getModel() {
		return user;
	}
	
	
}
