package com.ujiuye.util;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateConverter implements Converter<String,Date> {
    @Override
    public Date convert(String date) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date ndate = null;
        try {
            ndate = sdf.parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return ndate;
    }

}
