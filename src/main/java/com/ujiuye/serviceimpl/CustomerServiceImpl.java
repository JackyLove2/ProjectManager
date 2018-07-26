package com.ujiuye.serviceimpl;

import com.ujiuye.bean.Customer;
import com.ujiuye.mapper.CustomerMapper;
import com.ujiuye.service.CustomerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {

    @Resource
    private CustomerMapper customerMapper;

    @Override
    public List<Customer> getAllInfo(List<Integer> ids) {
        List<Customer> customers = customerMapper.getAllInfo(ids);
        return customers;
    }


    @Override
    public Customer get_one(int id) {
        Customer customer = customerMapper.selectByPrimaryKey(id);
        return customer;
    }

    public int customer_save(Customer cus){
        int status = customerMapper.insert(cus);
        /*incompatible：不相容的*/
        if(status == 0){
            return 0;
        }else{
            return 1;
        }
    }


    @Override
    public int update_customer(Customer cus) {
        int status = customerMapper.updateByPrimaryKey(cus);
        return status;
    }


    @Override
    public int delete_info(List<Integer> ids) {
        int status = customerMapper.deleteByPrimaryKey(ids);
        if(status>0){
            return 1;
        }
        return 0;
    }

    @Override
    public List<Customer> search(HashMap<String,Object> map) {
        List<Customer> list = customerMapper.search(map);
        return list;
    }
}
