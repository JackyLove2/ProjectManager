package com.ujiuye.controller;

import com.ujiuye.bean.Employee;
import com.ujiuye.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("employee")
public class EmployeeController {

    @Resource
    private EmployeeService employeeService;


    @RequestMapping("get_all")
    @ResponseBody
    public List<Employee> get_all(){
        List<Employee> list = employeeService.get_all(null);
        return list;
    }

    @RequestMapping("add_one")
    public String add_one(Employee employee ){
        System.out.println(employee.toString());
        int status = employeeService.add_one(employee);
        if(status > 0){
            return "user";
        }
        return "error";
    }

}
