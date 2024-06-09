package com.theta.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.theta.pojo.User;

public interface UserMapper {

    /**
     * 根据用户名和密码查询用户对象
     */
    User select(@Param("username") String username, @Param("password") String password);

    /**
     * 根据用户名查询
     * 
     * @param username
     * @return
     */
    User selectByUsername(String username);

    /**
     * 新增用户
     * 
     * @param username
     * @param password
     * @return
     */
    void add(User user);

    /**
     * 查询所有
     * @return
     */
    List<User> selectAll();
}
