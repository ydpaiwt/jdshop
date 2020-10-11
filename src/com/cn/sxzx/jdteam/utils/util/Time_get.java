package com.cn.sxzx.jdteam.utils.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Time_get {
    public static void main(String[] args) {

    }
    //获取系统当前时间
    public static String getTime(){
        SimpleDateFormat stp = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String date = stp.format(new Date());
        return date;
    }
    //获取系统当前时间1天之后的时间
//    public static String getTime_add(){
//        SimpleDateFormat stp = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
//        String date = stp.format(new Date());
//        Date addDate = addDate(1);
//
//        return addDate
//    }


    //num为需要增加的天数
    public static Date addDate (int num) {
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.DATE, num);
        Date date = calendar.getTime();
        return date;
    }
}
