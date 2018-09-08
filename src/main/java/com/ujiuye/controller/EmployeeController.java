package com.ujiuye.controller;

import com.ujiuye.bean.Employee;
import com.ujiuye.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("employee")
public class EmployeeController {

    @Resource
    private EmployeeService employeeService;

    @RequestMapping("getEmployee")
    @ResponseBody
    public List<Employee> getOne(String eid){
        List<Employee> list = null;
        HashMap<String, Object> map = new HashMap<>();
        map.put("eid",eid);
        list = employeeService.getEmployee(map);
        return list;
    }

    @RequestMapping("addOne")
    public String addOne(Employee employee ){
        System.out.println(employee.toString());
        int status = employeeService.addOne(employee);
        if(status > 0){
            return "user";
        }
        return "error";
    }



}
