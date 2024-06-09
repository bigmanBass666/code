package com.theta.web.servlet;

import java.io.IOException;

import com.theta.pojo.User;
import com.theta.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
	private UserService userService = new UserService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String checkCode = req.getParameter("checkCode");

		HttpSession session = req.getSession();
		Object right_checkCode = session.getAttribute("check_code");

		if (!right_checkCode.equals(checkCode)) { // 验证码错误则退出
			req.setAttribute("register_msg", "check code is incorrect!");
			req.getRequestDispatcher("register.jsp").forward(req, resp);
			return;
		}

		User user = new User();
		user.setUsername(username);
		user.setPassword(password);

		Boolean isRegisterSuccessful = userService.register(user);

		String register_msg = "";
		String path = "";

		String successful_msg = "registered successfully!";
		String failed_msg = "registration failed!";

		String successful_path = "login.jsp";
		String failed_path = "register.jsp";

		if (isRegisterSuccessful) {
			// registered successfully
			register_msg = successful_msg;
			path = successful_path;
		} else {
			// registration failed
			register_msg = failed_msg;
			path = failed_path;
		}

		req.setAttribute("register_msg", register_msg);
		req.getRequestDispatcher(path).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}