package com.theta.web.response;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/responseDemo1")
public class responseDemo1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("responseDemo1...");

        // 1. 设置响应状态码 302
        // resp.setStatus(302);
        // 2. 设置响应头 Location
        // resp.setHeader("Location", "/request-demo/resp2");

        // 动态获取虚拟目录
        String contextPath = req.getContextPath();

        resp.sendRedirect(contextPath + "/responseDemo2");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}