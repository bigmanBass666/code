package com.theta.web.filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@WebFilter("/*")
public class LoginFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;

		// 和登录注册相关的资源, 要放行
		String[] urls = { "/login.jsp", "/imgs/", "/css/", "/loginServlet", "/register.jsp", "/registerServlet",
				"/checkCodeServlet" };

		String reqUrl = req.getRequestURL().toString();

		for (String url : urls) {
			if (reqUrl.contains(url)) {
				chain.doFilter(req, response);
				return;
			}
		}

		HttpSession session = req.getSession();

		Object user = session.getAttribute("user");

		if (user != null) { // 已经登录了
			chain.doFilter(req, response);
		} else { // 没登录
			req.setAttribute("login_msg", "You are not logged in");
			req.getRequestDispatcher("login.jsp").forward(req, response);
		}
	}
}