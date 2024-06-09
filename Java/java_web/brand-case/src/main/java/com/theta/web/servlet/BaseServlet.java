package com.theta.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BaseServlet extends HttpServlet {
	// 根据请求的最后一段路径来进行方法分发
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();

		int index = requestURI.lastIndexOf('/');
		String methodName = requestURI.substring(index + 1);

		Class<? extends BaseServlet> cls = this.getClass();

		try {
			Method method = cls.getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);

			// 执行
			method.invoke(this, req, resp);
		} catch (NoSuchMethodException | SecurityException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
	}
}
