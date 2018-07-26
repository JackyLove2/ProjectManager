package com.ujiuye.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller("")
public class Skip {

    @RequestMapping("skip")
    public void skip(String path, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(path);
        req.getRequestDispatcher("/WEB-INF/jsp/"+path).forward(req, resp);
    }
}
