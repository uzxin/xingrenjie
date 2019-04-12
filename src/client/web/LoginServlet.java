package client.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import client.domain.User;
import client.service.UserService;
import client.service.impl.UserServiceImpl;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//先进行验证码验证
		String checkCode_client = request.getParameter("checkCode");//获得页面输入的验证
		//获得生成图片的文字的验证码
		String checkCode_session = (String) request.getSession().getAttribute("checkcode_session");
		//比对页面的和生成图片的文字的验证码是否一致
		if(!checkCode_session.equals(checkCode_client)){
			request.setAttribute("loginInfo", "您的验证码不正确");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		
		//验证码通过后，在进行用户验证
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//进行该用户查询
		UserService service = new UserServiceImpl();
		User user = null;
		user = service.login(username,password);
		if(user!=null){
			//用户名和密码正确
			response.sendRedirect(request.getContextPath());
		}else{
			//用户名或密码错误
			request.setAttribute("loginInfo", "用户名或密码错误");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}