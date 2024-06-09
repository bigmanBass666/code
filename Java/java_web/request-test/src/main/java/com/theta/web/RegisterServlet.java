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

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");

		User user = new User();
		user.setUsername(username);
		user.setPassword(password);

		SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);

		User user2 = userMapper.selectByUsername(username);

		PrintWriter writer = resp.getWriter();
		if (user2 == null) {
			userMapper.add(user);
			// userMapper.add(username, password);
			writer.write("Register successful!");
		} else {
			writer.write("The username " + username + " already exist!");
		}

		sqlSession.close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}