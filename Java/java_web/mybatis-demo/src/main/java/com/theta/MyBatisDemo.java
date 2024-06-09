package com.theta;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.theta.pojo.User;

public class MyBatisDemo {
    public static void main(String[] args) throws IOException {
        // 1. 加载myBatis的核心配置文件，获取 SqLSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        // 2.获取SqLSession对象，用它来执行sqL
        SqlSession sqlSession = sqlSessionFactory.openSession();

        // 3. 执行sql
        List<User> users = sqlSession.selectList("test.selectAll");

        System.out.println(users);

        sqlSession.close();
    }
}
