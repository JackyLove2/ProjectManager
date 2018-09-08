package com.ujiuye.service;

import com.ujiuye.bean.Employee;

import java.util.HashMap;
import java.util.List;

public interface EmployeeService {

    List<Employee> getEmployee(HashMap<String,Object> map);

    int addOne(Employee emp);
}
