package com.theta.web.servlet;

import java.io.IOException;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.theta.pojo.User;
import com.theta.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/selectAllUserServlet")
public class SelectAllUserServlet extends HttpServlet {
	private UserService service = new UserService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<User> users = service.selectAll();

		String jsonString = JSON.toJSONString(users);

		resp.getWriter().write(jsonString);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}