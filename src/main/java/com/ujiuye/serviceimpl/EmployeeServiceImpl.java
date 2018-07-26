package com.ujiuye.serviceimpl;

import com.ujiuye.bean.Employee;
import com.ujiuye.mapper.EmployeeMapper;
import com.ujiuye.service.EmployeeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

    @Resource
    private EmployeeMapper employeeMapper;

    @Override
    public List<Employee> get_all(HashMap<String, Object> map) {
        List<Employee> list = employeeMapper.get_all(null);
        return list;
    }

    @Override
    public int add_one(Employee emp) {
        int status = employeeMapper.insertSelective(emp);
        return status;
    }
}
