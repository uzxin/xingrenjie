package admin.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import admin.domain.AdminUser;
import admin.service.AdminUserService;
@WebServlet("/adminLogin")
public class AdminLoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//获取用户名密码
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		AdminUserService service= new AdminUserService();
		AdminUser adminUser = null;
		try {
			adminUser = service.login(username,password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (adminUser != null) {
			//登陆成功
			session.setAttribute("username", username);
			request.getRequestDispatcher("/admin/home.jsp").forward(request, response);
		} 
		if (adminUser == null) {
			//登陆失败
			request.setAttribute("username", username);
			request.setAttribute("loginInfo", "用户名或密码不正确");
			request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}