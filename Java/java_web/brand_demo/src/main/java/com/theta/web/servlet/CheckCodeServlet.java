package com.theta.web.servlet;

import java.io.IOException;

import com.theta.util.CheckCodeUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/checkCodeServlet")
public class CheckCodeServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletOutputStream outputStream = resp.getOutputStream();

		String outputVerifyImage = CheckCodeUtil.outputVerifyImage(100, 50, outputStream, 4);

		HttpSession session = req.getSession();

		session.setAttribute("check_code", outputVerifyImage);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}