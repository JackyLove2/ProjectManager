package com.ujiuye.controller;

import com.ujiuye.bean.Customer;
import com.ujiuye.service.CustomerService;
import com.ujiuye.service.ExcelService;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ExportExcel {

    @Resource
    private ExcelService excelService;
    @Resource
    private CustomerService customerService;

    @RequestMapping("toExcel")
    @ResponseBody
    public String toExcel(String ids, HttpServletResponse response){
        List<Integer> idlist = new ArrayList<Integer>();
        String[] idstr = ids.split(",");
        for(int i = 0; i < idstr.length; i++){
            idlist.add(Integer.parseInt(idstr[i]));
        }
        List<Customer> list = customerService.getAllInfo(idlist);
        HSSFWorkbook wb = excelService.toExcel(list);
        response.setContentType("application/vnd.ms-excel");
        response.setHeader("Content-disposition", "attachment;filename=customer.xls");
        try {
            File file = new File("d:\\excel");
            if(!file.exists()&&!file.isDirectory()){
                file.mkdirs();
            }
            File newfile = new File(file,"/customer.xls");
            FileOutputStream fos = new FileOutputStream(newfile);
            wb.write(fos);
            fos.flush();
            fos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "success";
    }
}
