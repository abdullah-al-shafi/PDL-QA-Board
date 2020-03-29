package com.pondit.practice.util;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;


public class Util {
    public static final String DOB_DATE_FORMAT = "dd/MM/yyyy";


    public static LocalDate getFormattedDate(String strDate, String pattern) {


        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
        LocalDate date = LocalDate.parse(strDate, formatter);
        System.out.println("Date: " + date.toString());
        return date;
    }

    public static String getStringDate(LocalDate date, String pattern) {

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
        return formatter.format(date);


    }
}