package com.theta.web.servlet;

import java.io.IOException;

import com.theta.pojo.Brand;
import com.theta.service.BrandService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateServlet")
public class UpdateServlet extends HttpServlet {
	private BrandService brandService = new BrandService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String brandName = req.getParameter("brandName");
		String companyName = req.getParameter("companyName");
		String ordered = req.getParameter("ordered");
		String description = req.getParameter("description");
		String status = req.getParameter("status");

		Brand brand = new Brand(Integer.parseInt(id), brandName, companyName, Integer.parseInt(ordered), description,
				Integer.parseInt(status));

		brandService.update(brand);
		req.getRequestDispatcher("/selectAllServlet").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}