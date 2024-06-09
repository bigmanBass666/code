package com.theta.web.servlet;

import java.io.IOException;

import com.theta.pojo.User;
import com.theta.service.SelectByUsernameService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/selectUserServlet")
public class SelectUserServlet extends HttpServlet {
	private SelectByUsernameService service = new SelectByUsernameService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		System.out.println(username);

		User user = service.selectByUsername(username);

		Boolean isUsernameExist = true;
		if (user == null) {
			isUsernameExist = false;
		}

		resp.getWriter().write(isUsernameExist + "");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}