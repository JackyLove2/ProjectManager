package com.ujiuye.controller;

import com.ujiuye.bean.Customer;
import com.ujiuye.service.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.*;


@Controller("customerController")
@RequestMapping("customer")
public class CustomerController {

    @Resource(name = "customerService")
    private CustomerService customerService;

    @RequestMapping("getAllInfo")
    @ResponseBody
    public List<Customer> getAllInfo(){
        List<Customer> customerList = customerService.getAllInfo(null);
        return customerList;
    }


    @RequestMapping("customer_save")
    public String customer_save(Customer cus){
        int status = customerService.customer_save(cus);
        if(status == 1){
            return "customer";
        }
        return "error";
    }


    @RequestMapping("update_info")
    public String update_info(Customer cus){
        int status = customerService.update_customer(cus);
        if(status == 1){
            return "customer";
        }
        return "error";
    }

    @RequestMapping("get_one")
    @ResponseBody
    public Customer get_one(int id){
        Customer one = customerService.get_one(id);
        return one;
    }


    @RequestMapping("delete_cus")
    @ResponseBody
    public String delete_cus(String ids){
        List<Integer> list =new ArrayList<Integer>();
        String[] str=ids.split(",");
        for(int index = 0; index < str.length; index++){
            list.add(Integer.parseInt(str[index]));
        }
        int status = customerService.delete_info(list);
        if(status==1) {
            return "success";
        }
        return "error";
    }

    @RequestMapping("search")
    @ResponseBody
    public List<Customer> search(String condition,String keyword,String orderby){
        System.out.println(condition+"--"+keyword+"--"+orderby);
        HashMap<String,Object> map = new HashMap<>();
        if(condition=="addtime"){
            String[] str = keyword.split("-");
            Calendar date = Calendar.getInstance();
            date.set(Integer.parseInt(str[0]),Integer.parseInt(str[1]),Integer.parseInt(str[2]));
            map.put("keyword",date);
        }else{
            map.put("keyword",keyword);
        }
        map.put("condition",condition);
        map.put("orderby",orderby);
        List<Customer> list = customerService.search(map);
        return list;
    }
}
