package com.theta.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.theta.mapper.UserMapper;
import com.theta.pojo.User;
import com.theta.util.SqlSessionFactoryUtils;

public class UserService {
	private SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

	/**
	 * 登录
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	public User login(String username, String password) {
		SqlSession sqlSession = factory.openSession();

		UserMapper mapper = sqlSession.getMapper(UserMapper.class);

		User user = mapper.select(username, password);

		sqlSession.close();

		return user;
	}

	/**
	 * 注册
	 * 
	 * @param user
	 * @return
	 */
	public Boolean register(User user) {
		SqlSession sqlSession = factory.openSession();

		UserMapper mapper = sqlSession.getMapper(UserMapper.class);

		User u = mapper.selectByUsername(user.getUsername());

		if (u == null) { // 如果用户名不存在, 则创建新用户
			mapper.add(user);
			sqlSession.commit();
		}

		sqlSession.close();

		// 灵魂之处
		return u == null;
	}

	public List<User> selectAll() {
		SqlSession sqlSession = factory.openSession();

		UserMapper mapper = sqlSession.getMapper(UserMapper.class);

		List<User> users = mapper.selectAll();

		sqlSession.close();

		return users;
	}
}