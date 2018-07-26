package com.ujiuye.serviceimpl;

import com.ujiuye.bean.Customer;
import com.ujiuye.service.ExcelService;
import org.apache.poi.hssf.usermodel.*;
import org.springframework.stereotype.Service;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service("excelService")
public class ExportToExcel implements ExcelService {

    public HSSFWorkbook toExcel(List<Customer> list){

        HSSFWorkbook workbook = new HSSFWorkbook();// 创建一个Excel文件
        HSSFSheet sheet = workbook.createSheet("客户信息表");// 创建一个Excel的Sheet
//        sheet.createFreezePane(1, 3);// 冻结
        String[] header={"id","comnanme","companyperson","comaddress",
                "comphone","camera","present","remark","addtime"};
        // 设置列宽
        sheet.setColumnWidth(0, 4500);
        sheet.setColumnWidth(1, 4500);
        sheet.setColumnWidth(2, 4500);
        sheet.setColumnWidth(3, 4500);
        sheet.setColumnWidth(4, 4500);
        sheet.setColumnWidth(5, 4500);
        sheet.setColumnWidth(6, 4500);
        sheet.setColumnWidth(8, 4500);


            // 创建第一行
//        HSSFRow row0 = sheet.createRow(0);
//        HSSFCell cell0 = row0.createCell(0);
        // 创建第一列
//        cell0.setCellValue(new HSSFRichTextString("客户信息表"));
        // 设置行高
//        row0.setHeight((short) 900);
        //      设置表头
        HSSFRow row1 = sheet.createRow(1);
        for(int i = 0; i <header.length; i++){
            HSSFCell cell = row1.createCell(i);
            cell.setCellValue(header[i]);
//            sheet.autoSizeColumn(i);
        }

//        //创建样式
//        HSSFCellStyle cellStyle = workbook.createCellStyle();
//        //日期
//        HSSFDataFormat format= workbook.createDataFormat();

//        填充数据
        Customer cus = null;
        for(int i = 0; i < list.size(); i++){
             cus = list.get(i);
            HSSFRow row = sheet.createRow(i+2);
            HSSFCell cell = null;

            cell = row.createCell(0);
            if(cus.getId()!=null) {
                cell.setCellValue(cus.getId());
            }else{
                cell.setCellValue("--");
            }

            cell = row.createCell(1);
            if(cus.getComname()!=null) {
                cell.setCellValue(cus.getComname());
            }else{
                cell.setCellValue("--");
            }

            cell = row.createCell(2);
            if(cus.getCompanyperson()!=null) {
                cell.setCellValue(cus.getCompanyperson());
            }else{
                cell.setCellValue("--");
            }

            cell = row.createCell(3);
            if(cus.getComaddress()!=null) {
                cell.setCellValue(cus.getComaddress());
            }else{
                cell.setCellValue("--");
            }

            cell = row.createCell(4);
            if(cus.getComphone()!=null) {
                cell.setCellValue(cus.getComphone());
            }else{
                cell.setCellValue("--");
            }

            cell = row.createCell(5);
            if(cus.getCamera()!=null) {
                cell.setCellValue(cus.getCamera());
            }else{
                cell.setCellValue("--");
            }

            cell = row.createCell(6);
            if(cus.getPresent()!=null) {
                cell.setCellValue(cus.getPresent());
            }else{
                cell.setCellValue("--");
            }


            cell = row.createCell(7);
            if(cus.getRemark()!=null) {
                cell.setCellValue(cus.getRemark());
            }else{
                cell.setCellValue("--");
            }

            cell = row.createCell(8);
            if(cus.getAddtime()!=null) {
                long time = cus.getAddtime().getTime();
                Date date = new Date(time);
                Calendar cld = Calendar.getInstance();
                cld.setTime(date);
                String dateStr = cld.get(Calendar.YEAR)+"年"+cld.get(Calendar.MONTH)+"月"+cld.get(Calendar.DAY_OF_MONTH)+"日";
                cell.setCellValue(dateStr);
//                cellStyle.setDataFormat(format.getFormat("yyyy年MM月dd日"));
//                cell.setCellStyle(cellStyle);
            }else{
                cell.setCellValue("--");
            }

//
//            //小数
//            HSSFCellStyle cellStyle1 = workbook.createCellStyle();
//            HSSFDataFormat format1= workbook.createDataFormat();
//            cellStyle1.setDataFormat(HSSFDataFormat.getBuiltinFormat("0.00"));
//            //货币格式
//            //cellStyle1.setDataFormat(format1.getFormat("¥#,##0"));
//            dataCell[6].setCellStyle(cellStyle1);
//
//            //百分比
//            HSSFCellStyle cellStyle2 = workbook.createCellStyle();
//            HSSFDataFormat format2= workbook.createDataFormat();
//            cellStyle2.setDataFormat(format2.getFormat("0%"));
//            dataCell[7].setCellStyle(cellStyle2);

        }

        return workbook;
    }

}
