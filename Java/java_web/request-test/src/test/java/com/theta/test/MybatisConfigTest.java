package com.theta.test;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.theta.mapper.UserMapper;
import com.theta.pojo.User;

public class MybatisConfigTest {
	@Test
	public void testSelect() throws IOException {
		String username = "zhangsan";
		String password = "123";
		
		// 1. 加载myBatis的核心配置文件，获取 SqLSessionFactory
		String resource = "mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		
		User user = userMapper.select(username, password);

		System.out.println(user);

		if (user != null) {
			System.out.println("succeed");
		} else {
			System.out.println("failed");
		}
		
		sqlSession.close();
	}
}
