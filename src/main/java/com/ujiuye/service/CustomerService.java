package com.ujiuye.service;

import com.ujiuye.bean.Customer;

import java.util.HashMap;
import java.util.List;


public interface CustomerService {

    List<Customer> getAllInfo(List<Integer> ids);

    int customer_save(Customer cus);

    int update_customer(Customer cus);

    Customer get_one(int id);

    int delete_info(List<Integer> ids);

    List<Customer> search(HashMap<String,Object> map);
}
