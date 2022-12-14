package com.example.j.vo;

import lombok.Data;

import java.sql.Date;


@Data
public class historyVO {
    private String userId;
    private int historyNum;
    private String comName;
    private String comDepartment;
    private String cexp;
    private Date startDate;
    private Date endDate;
}
