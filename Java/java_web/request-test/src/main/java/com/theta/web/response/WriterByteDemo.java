package com.theta.web.response;

import java.io.FileInputStream;
import java.io.IOException;

import org.apache.commons.io.IOUtils;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/WriterByteDemo")
public class WriterByteDemo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        FileInputStream fileInputStream = new FileInputStream("E:/other/picture/pure_color/lilac.jpg");

        ServletOutputStream outputStream = resp.getOutputStream();

        // byte[] buff = new byte[1024];
        // int len = 0;
        // while ((len = fileInputStream.read()) != -1) {
        //     outputStream.write(buff, 0, len);
        // }
        
        IOUtils.copy(fileInputStream, outputStream);

        fileInputStream.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}