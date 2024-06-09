package com.theta.web.servlet.old;

import java.io.BufferedReader;
import java.io.IOException;

import com.alibaba.fastjson.JSON;
import com.theta.pojo.Brand;
import com.theta.service.BrandService;
import com.theta.service.impl.BrandServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// @WebServlet("/addServlet")
public class AddServlet extends HttpServlet {
	private BrandService brandService = new BrandServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BufferedReader bf = req.getReader();
		String line = bf.readLine();

		Brand brand = JSON.parseObject(line, Brand.class);
		
		brandService.add(brand);		

		resp.getWriter().write("success");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}