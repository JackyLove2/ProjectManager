package com.ujiuye.mapper;

import com.ujiuye.bean.Employee;
import com.ujiuye.bean.EmployeeExample;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

public interface EmployeeMapper {

    int insertSelective(Employee record);

    List<Employee> getEmployee(HashMap<String,Object> map);

    long countByExample(EmployeeExample example);

    int deleteByExample(EmployeeExample example);

    int deleteByPrimaryKey(Integer eid);

    int insert(Employee record);

    List<Employee> selectByExampleWithBLOBs(EmployeeExample example);

    List<Employee> selectByExample(EmployeeExample example);

    Employee selectByPrimaryKey(Integer eid);

    int updateByExampleSelective(@Param("record") Employee record, @Param("example") EmployeeExample example);

    int updateByExampleWithBLOBs(@Param("record") Employee record, @Param("example") EmployeeExample example);

    int updateByExample(@Param("record") Employee record, @Param("example") EmployeeExample example);

    int updateByPrimaryKeySelective(Employee record);

    int updateByPrimaryKeyWithBLOBs(Employee record);

    int updateByPrimaryKey(Employee record);
}