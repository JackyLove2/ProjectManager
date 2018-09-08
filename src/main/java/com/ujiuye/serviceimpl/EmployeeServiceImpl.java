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
    public List<Employee> getEmployee(HashMap<String, Object> map) {
        List<Employee> list = employeeMapper.getEmployee(map);
        return list;
    }

    @Override
    public int addOne(Employee emp) {
        int status = employeeMapper.insertSelective(emp);
        return status;
    }
}
