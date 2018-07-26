package com.ujiuye.service;

import com.ujiuye.bean.Employee;

import java.util.HashMap;
import java.util.List;

public interface EmployeeService {

    List<Employee> get_all(HashMap<String,Object> map);

    int add_one(Employee emp);
}
