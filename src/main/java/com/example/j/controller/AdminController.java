package com.example.j.controller;

import com.example.j.service.adminService;
import com.example.j.vo.adminVO;
import com.example.j.vo.hrVO;
import com.example.j.vo.listVO;
import com.example.j.vo.userVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

    @GetMapping("/listdelete")
    public String deleteBoard(HttpSession session, String title) { // 회원 정보 수정
        adminService.deleteListByTitle(title);
        return "redirect:/board";
    }


    @GetMapping("/adminlogin")
    public String toLoginPage(Model model, HttpSession session, RedirectAttributes redirect) { // 로그인 페이지
        String id = (String) session.getAttribute("id");
        if (id != null) { // 로그인된 상태
            return "redirect:/adminlogin";
        }
//        ModelAndView mv=new ModelAndView("login");
//        if(redirect.getAttribute("msg")!=null){
//            mv.addObject("msg",redirect.getAttribute("msg"));
//        }
//        return mv; // 로그인되지 않은 상태
        return "admin/adminlogin";
    }



    @ResponseBody
    @PostMapping("/adminlogin")
    public String adminlogin(String adminId, String adminPw, HttpSession session,Model model) { // 로그인
        System.out.println("admin id: " + adminId);
        System.out.println("admin pw: " + adminPw);
//      String id = userService.login(userId, userPw);
        adminVO adminVo = adminService.getAdminById(adminId);
        model.addAttribute("adminInfo", adminVo);
        String resultmsg = "";
        if (adminVo != null && adminVo.getPw().equals(adminPw)) {
            session.setAttribute("id",adminId);
            return resultmsg = "<script>location.href='admin'</script>";
        } else{//로그인 실패시

            return resultmsg = "<script>alert('로그인 실패');location.href='adminlogin'</script>";
        }

    }


    @GetMapping("/adminlogout")
    public String logout(HttpSession session) { // 로그아웃
        session.invalidate();
        System.out.println("logout");
        return "redirect:/adminlogin";
    }


    @GetMapping("/hrtable")
    public String tohrtablePage(Model model) {

        List<hrVO> hrVo = adminService.getHr();
        System.out.println(hrVo);
        model.addAttribute("hrList", hrVo);


        return "admin/hrtable";
    }


}
