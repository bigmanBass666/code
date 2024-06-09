package com.theta.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.theta.pojo.Brand;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ELTest")
public class ELTest extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Brand> brands = new ArrayList<Brand>();
		brands.add(new Brand(1, "三只松鼠", "三只松鼠", 100, "三只松鼠，好吃不上火", 1));
		brands.add(new Brand(2, "优衣库", "优衣库", 200, "优衣库，服适人生", 0));
		brands.add(new Brand(3, "小米", "小米科技有限公司", 1000, "为发烧而生", 1));

		req.setAttribute("brands", brands);

		req.getRequestDispatcher("el-demo.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}