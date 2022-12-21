package com.example.j.mapper;

import com.example.j.vo.adminVO;
import com.example.j.vo.hrVO;
import com.example.j.vo.listVO;
import com.example.j.vo.userVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface adminMapper {
    List<adminVO> getAdminList();

    List<userVO> getUser();

    void deleteUser(String userId);

    void deleteList(String title);
    List<listVO> getList();

    adminVO getAdminById(String id);

    List<hrVO> getHrWithCname();
}
