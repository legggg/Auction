package com.example.j.vo;

import lombok.Data;

import java.util.Date;

@Data
public class listVO {
    private int num;
    private String title;
    private String userId;
    private Date date;
    private String content;
    private String open;
    private Date endDate;
    private String endDate_1;
    private String job;

    private userVO userVo;
}
