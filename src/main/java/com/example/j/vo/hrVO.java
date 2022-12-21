package com.example.j.vo;

import lombok.Data;

@Data
public class hrVO {
    private String hrId;
    private String hrPw;
    private String hrName;
    private String hrPhNum;
    private String hrEmail;
    private String comNum;

    private companyVO companyVo;
}
