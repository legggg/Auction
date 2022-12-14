package com.example.j.mapper;

import com.example.j.vo.auctionVO;
import com.example.j.vo.hrVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface companyMapper {
    hrVO getHrById(String hrId);
    void insertHr(hrVO hrVo);
    void insertCompany(String comNum);

    List<auctionVO> getAuctionByComNum(String comNum);

    List<auctionVO> selectAuctionAndList(String comNum);

    void insertAuction(auctionVO auctionVo);

    List<auctionVO> selectAuctionByNum(int num);

    void updateHr(hrVO hrVo);

    List<auctionVO> selectAuctionHrCompany(int num);
}
