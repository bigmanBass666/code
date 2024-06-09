package com.theta.web.servlet;

import java.io.BufferedReader;
import java.io.IOException;

import com.alibaba.fastjson.JSON;
import com.theta.pojo.Brand;
import com.theta.service.BrandService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addServlet")
public class AddServlet extends HttpServlet {
	private BrandService brandService = new BrandService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// String brandName = req.getParameter("brandName");
		// String companyName = req.getParameter("companyName");
		// String ordered = req.getParameter("ordered");
		// String description = req.getParameter("description");
		// String status = req.getParameter("status");

		// Brand brand = new Brand();
		// brand.setBrandName(brandName);
		// brand.setCompanyName(companyName);
		// brand.setOrdered(Integer.parseInt(ordered));
		// brand.setStatus(Integer.parseInt(status));
		// brand.setDescription(description);

		BufferedReader bf = req.getReader();
		String line = bf.readLine();

		Brand brand = JSON.parseObject(line, Brand.class);

		brandService.add(brand);

		// add()报错的话, 这行代码也不会执行
		resp.getWriter().write("success");

		System.out.println("success发过去了没?");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}