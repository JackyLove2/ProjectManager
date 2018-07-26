package com.ujiuye.service;

import com.ujiuye.bean.Customer;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import java.util.List;

public interface ExcelService {

    HSSFWorkbook toExcel(List<Customer> cus);
}
