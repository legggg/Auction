package com.example.j.controller;

import com.example.j.service.adminService;
import com.example.j.vo.adminVO;
import com.example.j.vo.listVO;
import com.example.j.vo.userVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class AdminController {
    @Autowired
    private adminService adminService;

    @GetMapping("/admin")
    public String getAdminList(Model model){
        List<adminVO> adminList = adminService.getAdminList();
        model.addAttribute("adminList", adminList);
        List<userVO> userVo=adminService.getUser();
        model.addAttribute("userList", userVo);

        return "admin/admin";
    }

    @GetMapping("/table")
    public String totablePage(Model model) {
        List<userVO> userVo=adminService.getUser();
        model.addAttribute("userList", userVo);
        return "admin/table";
    }

    @GetMapping("/delete")
    public String deleteUser(HttpSession session, String id) { // 회원 정보 수정
        adminService.deleteById(id);
        return "redirect:/table";
    }

    @GetMapping("/board")
    public String toboardPage(Model model) {

        List<listVO> listVo = adminService.getList();
        model.addAttribute("list",listVo);

        return "admin/board";
    }

}
