package com.example.j.mapper;

import com.example.j.vo.*;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface userMapper {
    List<adminVO> getAdminList();

    userVO getUserById(String userId);
    void insertUser(userVO userVo); // 회원가입

    void updateUser(userVO userVo); // 회원 정보 수정
    //학력
    List<graduationVO> getGraduationById(String userId);
    void insertGraduation(graduationVO gVo);
    graduationVO getGraduationByIdNum(String userId,int num);
    void updateGrduation(graduationVO gVo);
    void deleteGraduation(int num);
    //경력
    List<historyVO> getHistoryById(String userId);
    historyVO getHistoryByIdNum(String userId,int hnum);
    void updateHistroy(historyVO hVo);
    void deleteHistory(int hnum);
    void insertHistory(historyVO hVo);
    List<listVO> getListById(String id);
    listVO getListByNum(int num);
    void updateList(listVO listVo);
    void deleteList(int num);
    void insertList(listVO listVo);
    List<listVO> selectListAndName();
    List<listVO> getListByIdAfterNow(String userId);
    List<listVO> getListByIdBeforeNow(String userId);
    List<auctionVO> selectAuctionHrCompany(int num);
    List<userVO> getUser();
    List<listVO> selectListByCity(int num);

    List<listVO> selectListByKeyword(String type,String keyword);
}
