package com.example.j.service;


import com.example.j.mapper.userMapper;
import com.example.j.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class userService {
    @Autowired
    private userMapper userMapper;

    public List<adminVO> getAdminList() {
        return userMapper.getAdminList();
    }
//    public String login(String userId, String userPw) {
//        userVO userVo = userMapper.getUserById(userId);
//        if (userVo.getUserPw().equals(userPw)) {
//            return userVo.getUserId();
//        }
//        return null;
//    }
    public userVO getUserById(String id) {
        return userMapper.getUserById(id);
    }

    public void signup(userVO userVo) {
        userMapper.insertUser(userVo);
    }

    public void modifyInfo(userVO userVo) {
        userMapper.updateUser(userVo);
    }
    //학력
    public List<graduationVO> getGraduationById(String id){
        return userMapper.getGraduationById(id);
    }

    public void insertGraduation(graduationVO gVo) {
        userMapper.insertGraduation(gVo);
    }

    public graduationVO getGraduationByIdNum(String userId,int num){
        return userMapper.getGraduationByIdNum(userId,num);
    }
    public void updateGrduation(graduationVO gVo) {userMapper.updateGrduation(gVo);}

    public void deleteGraduation(int num){userMapper.deleteGraduation(num);}
    //경력
    public List<historyVO> getHistoryById(String userId){
        return userMapper.getHistoryById(userId);
    }
    public historyVO getHistoryByIdNum(String userId,int hnum){
        return userMapper.getHistoryByIdNum(userId,hnum);
    }
    public void updateHistroy(historyVO hVo){
        userMapper.updateHistroy(hVo);
    }
    public void deleteHistory(int hnum){
        userMapper.deleteHistory(hnum);
    }

    public void insertHistory(historyVO hVo){
        userMapper.insertHistory(hVo);
    }

    public List<listVO> getListById(String userId){
        return userMapper.getListById(userId);
    }

    public listVO getListByNum(int num){return userMapper.getListByNum(num);};

    public void updateList(listVO listVo){
        userMapper.updateList(listVo);
    }
    public void deleteList(int num){userMapper.deleteList(num);}

    public void insertList(listVO listVo){userMapper.insertList(listVo);}

    public List<listVO> selectListAndName(){return userMapper.selectListAndName();}

    public List<listVO> getListByIdAfterNow(String userId){
        return userMapper.getListByIdAfterNow(userId);
    }

    public List<listVO> getListByIdBeforeNow(String userId){
        return userMapper.getListByIdBeforeNow(userId);
    }

    public List<auctionVO> selectAuctionHrCompany(int num){return userMapper.selectAuctionHrCompany(num);}

    public List<userVO> getUser(){return userMapper.getUser();}

    public List<listVO> selectListByCity(int num){return userMapper.selectListByCity(num);}

    public List<listVO> selectListByKeyword(String searchType, String searchKeyword){return userMapper.selectListByKeyword(searchType,searchKeyword);}

}
