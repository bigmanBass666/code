package com.theta.web.servlet;

import java.io.IOException;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.theta.pojo.Brand;
import com.theta.service.BrandService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/selectAllServlet")
public class SelectAllServlet extends HttpServlet {
	private BrandService brandService = new BrandService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Brand> brands = brandService.selectAll();

		String jsonString = JSON.toJSONString(brands);

		resp.getWriter().write(jsonString);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}