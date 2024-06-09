package com.theta.json;

import com.alibaba.fastjson.JSON;
import com.theta.pojo.User;

public class FastJsonDemo {
	public static void main(String[] args) {
		// obj -> json str
		User user = new User();
		user.setId(1);
		user.setUsername("theta");
		user.setPassword("123");

		String jsonString = JSON.toJSONString(user);
		System.out.println(jsonString);

		// json str -> obj
		User userObject = JSON.parseObject(jsonString, User.class);
		System.out.println(userObject);
	}
}
