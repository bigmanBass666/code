package com.theta.web.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.theta.pojo.Brand;
import com.theta.pojo.PageBean;
import com.theta.service.BrandService;
import com.theta.service.impl.BrandServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/brand/*")
public class BrandServlet extends BaseServlet {
	private BrandService brandService = new BrandServiceImpl();

	public void selectAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Brand> brands = brandService.selectAll();

		String jsonString = JSON.toJSONString(brands);

		resp.setContentType("text/html;charset=utf-8");
		resp.getWriter().write(jsonString);
	}

	public void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BufferedReader bf = req.getReader();
		String line = bf.readLine();

		Brand brand = JSON.parseObject(line, Brand.class);

		brandService.add(brand);

		resp.getWriter().write("success");
	}

	public void deleteByIds(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BufferedReader bf = req.getReader();
		String line = bf.readLine();

		int[] ids = JSON.parseObject(line, int[].class);

		brandService.deleteByIds(ids);

		resp.getWriter().write("success");
	}

	public void selectByPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String _currentPage = req.getParameter("currentPage");
		String _pageSize = req.getParameter("pageSize");

		int currentPage = Integer.parseInt(_currentPage);
		int pageSize = Integer.parseInt(_pageSize);

		PageBean<Brand> pageBean = brandService.selectByPage(currentPage, pageSize);

		String jsonString = JSON.toJSONString(pageBean);

		resp.setContentType("text/html;charset=utf-8");
		resp.getWriter().write(jsonString);
	}

	public void deleteById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BufferedReader bf = req.getReader();
		String line = bf.readLine();

		int id = JSON.parseObject(line, int.class);

		brandService.deleteById(id);

		resp.getWriter().write("success");
	}

	public void selectById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String _id = req.getParameter("id");

		int id = Integer.parseInt(_id);

		Brand brand = brandService.selectById(id);
		System.out.println(brand);

		String jsonString = JSON.toJSONString(brand);

		resp.getWriter().write(jsonString);
	}

	public void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BufferedReader bf = req.getReader();
		String line = bf.readLine();

		Brand brand = JSON.parseObject(line, Brand.class);

		brandService.update(brand);

		resp.getWriter().write("success");
	}
}
