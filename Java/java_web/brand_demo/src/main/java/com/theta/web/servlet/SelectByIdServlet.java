package com.theta.web.servlet;

import java.io.IOException;

import com.theta.pojo.Brand;
import com.theta.service.BrandService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/selectByIdServlet")
public class SelectByIdServlet extends HttpServlet {
	private BrandService brandService = new BrandService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");

		Brand brand = brandService.selectById(Integer.parseInt(id));

		req.setAttribute("brand", brand);
		req.getRequestDispatcher("/update.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}