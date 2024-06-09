package com.theta.web.servlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/user/*")
public class UserServlet extends BaseServlet {
	public void selectAll(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("user selectAll");
	}

	public void add(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("user add");
	}
}
