package com.example.j.service;

import com.example.j.mapper.adminMapper;
import com.example.j.vo.adminVO;
import com.example.j.vo.listVO;
import com.example.j.vo.userVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class adminService {
    @Autowired
    private adminMapper adminMapper;
    public List<adminVO> getAdminList() {
        return adminMapper.getAdminList();
    }
    public List<userVO> getUser(){return adminMapper.getUser();}

    public void deleteById(String id){adminMapper.deleteUser(id);}

    public List<listVO> getList(){return adminMapper.getList();}
}
