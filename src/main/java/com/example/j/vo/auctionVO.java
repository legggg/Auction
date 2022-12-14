package com.example.j.vo;

import lombok.Data;

import java.util.Date;

@Data

public class auctionVO {
    private int num;
    private String hrId;
    private int amount;
    private Date date;
    private String comContent;
    private listVO listVo;
    private hrVO hrVo;

    private companyVO companyVo;
}
