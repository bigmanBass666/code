package com.theta.service;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.theta.mapper.UserMapper;
import com.theta.pojo.User;
import com.theta.util.SqlSessionFactoryUtils;

public class SelectByUsernameService {
	SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

	public User selectByUsername(String username) {
		SqlSession sqlSession = factory.openSession();
		
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		
		User user = mapper.selectByUsername(username);	
		
		sqlSession.close();

		return user;
	}
}
