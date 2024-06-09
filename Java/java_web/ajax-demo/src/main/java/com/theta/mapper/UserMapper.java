package com.theta.mapper;

import com.theta.pojo.User;

public interface UserMapper {
	User selectByUsername(String username);
}
