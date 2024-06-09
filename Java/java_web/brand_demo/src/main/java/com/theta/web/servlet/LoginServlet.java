package com.theta.web.servlet;

import java.io.IOException;

import com.theta.pojo.User;
import com.theta.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private UserService userService = new UserService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");

		// checkbox
		String remember = req.getParameter("remember");

		User user = userService.login(username, password);

		if (user != null) {
			if ("1".equals(remember)) {
				// addCookie
				Cookie cookie_username = new Cookie("username", username);
				Cookie cookie_password = new Cookie("password", password);

				cookie_username.setMaxAge(60 * 60 * 24 * 7);
				cookie_password.setMaxAge(60 * 60 * 24 * 7);

				resp.addCookie(cookie_username);
				resp.addCookie(cookie_password);
			}

			HttpSession session = req.getSession();

			session.setAttribute("user", user);

			// resp.sendRedirect("selectAllServlet");
			resp.sendRedirect("index.html");
		} else {
			// 登录失败, 未注册
			req.setAttribute("login_msg", "用户名或密码不正确.");

			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}