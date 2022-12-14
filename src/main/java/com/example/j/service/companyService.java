package com.example.j.service;

import com.example.j.mapper.companyMapper;
import com.example.j.mapper.userMapper;
import com.example.j.vo.auctionVO;
import com.example.j.vo.hrVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class companyService {
    @Autowired
    private companyMapper companyMapper;

    public hrVO getHrById(String hrId){return companyMapper.getHrById(hrId);}

    public void insertHr(hrVO hrVo){ companyMapper.insertHr(hrVo); }

    public void insertCompany(String comNum){companyMapper.insertCompany(comNum);}

    public List<auctionVO> getAuctionByComNum(String comNum){return  companyMapper.getAuctionByComNum(comNum);};

    public List<auctionVO> selectAuctionAndList(String comNum){return companyMapper.selectAuctionAndList(comNum);}

    public void insertAuction(auctionVO auctionVo){companyMapper.insertAuction(auctionVo);}

    public List<auctionVO> selectAuctionByNum(int num){return companyMapper.selectAuctionByNum(num);}

    public void updateHr(hrVO hrVo){
        companyMapper.updateHr(hrVo);
    }


}
