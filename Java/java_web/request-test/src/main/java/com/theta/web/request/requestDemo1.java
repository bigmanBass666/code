package com.theta.web.request;

import java.io.IOException;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/req1")
public class requestDemo1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 1. 获取所有参数的Map集合
        Map<String, String[]> parameterMap = req.getParameterMap();
        for (String key : parameterMap.keySet()) {
            System.out.print(key + ":");

            String[] values = parameterMap.get(key);
            for (String value : values) {
                System.out.print(value + " ");
            }

            System.out.println();
        }

        System.out.println("----------");

        // 2. 根据key获取参数值，数组
        String[] parameterValues = req.getParameterValues("hobby");
        for (String value : parameterValues) {
            System.out.println(value);
        }

        System.out.println("----------");

        // 3. 根据key 获取单个参数值
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        System.out.println(username);
        System.out.println(password);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
