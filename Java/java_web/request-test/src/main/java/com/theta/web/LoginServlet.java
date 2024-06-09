package com.theta.web;

import java.io.IOException;
import java.io.PrintWriter;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.theta.mapper.UserMapper;
import com.theta.pojo.User;
import com.theta.util.SqlSessionFactoryUtils;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");

		SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);

		User user = userMapper.select(username, password);

		sqlSession.close();

		resp.setContentType("text/html;charset=utf-8");
		PrintWriter writer = resp.getWriter();
		if (user != null) {
			writer.write("登陆成功");
		} else {
			writer.write("登陆失败");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}