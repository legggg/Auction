package com.example.j.controller;

import com.example.j.service.userService;
import com.example.j.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class userController {
    @Autowired
    private userService userService;

    @GetMapping("/home")
    public String home(HttpSession session, Model model,Criteria cri) {
        String id = (String) session.getAttribute("id");
        System.out.println(cri);
        List<listVO> listVo = userService.selectListByKeyword(cri.getSearchType(),cri.getSearchKeyword());
        model.addAttribute("homeList",listVo);
        System.out.println(listVo);


        if (id != null) { // 로그인된 상태
            userVO userVo = userService.getUserById(id);
            model.addAttribute("userInfo", userVo);
        }
        return "home";
    }
    @GetMapping("/home2")
    public String homeSearchArea(@RequestParam("num") int num,HttpSession session, Model model) { // 회원 정보 수정
        String id = (String) session.getAttribute("id");
        List<listVO> listVo = userService.selectListByCity(num);
        model.addAttribute("homeList",listVo);
        System.out.println("listVO: "+listVo);

        if (id != null) { // 로그인된 상태

        }
        return "home";
    }
    @ResponseBody
    @GetMapping("/accessr")
    public String accessRestriction() {
        String resultmsg = "";
        return resultmsg="<script>alert('접근제한');location.href='/home'</script>";
    }



    @GetMapping("/login")
    public String toLoginPage(Model model,HttpSession session,RedirectAttributes redirect) { // 로그인 페이지
        String id = (String) session.getAttribute("id");
        if (id != null) { // 로그인된 상태
            return "redirect:/";
        }
//        ModelAndView mv=new ModelAndView("login");
//        if(redirect.getAttribute("msg")!=null){
//            mv.addObject("msg",redirect.getAttribute("msg"));
//        }
//        return mv; // 로그인되지 않은 상태
        return "login";
    }



    @ResponseBody
    @PostMapping("/login")
    public String login(String userId, String userPw, HttpSession session,Model model) { // 로그인
        System.out.println("user id: " + userId);
        System.out.println("user pw: " + userPw);
//        String id = userService.login(userId, userPw);
        userVO userVo = userService.getUserById(userId);
        model.addAttribute("userInfo", userVo);
        String resultmsg = "";
        if (userVo != null && userVo.getUserPw().equals(userPw)) {
            String name = userVo.getUserName();
            session.setAttribute("id",userId);
            session.setAttribute("state","user");
            return resultmsg = "<script>location.href='/home'</script>";
        } else{//로그인 실패시

            return resultmsg = "<script>alert('로그인 실패');location.href='/login'</script>";
        }

    }

    @GetMapping("/signup")
    public String toSignupPage() {  //회원가입 페이지
        return "signup";
    }

    @PostMapping("/signup")
    public String signup(userVO userVo) { // 회원가입
        try {
            userService.signup(userVo);
        } catch (DuplicateKeyException e) {
            return "redirect:/signup?error_code=-1";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/signup?error_code=-99";
        }
        return "redirect:/login";
    }

    @GetMapping("/update")
    public String toUpdatePage(HttpSession session, Model model) { // 회원 정보 수정 페이지
        String id = (String) session.getAttribute("id");
        userVO userVo = userService.getUserById(id);
        model.addAttribute("user", userVo);
        return "user/updateUser";
    }

    @PostMapping("/update")
    public String modifyInfo(HttpSession session, userVO userVo) { // 회원 정보 수정
        String id = (String) session.getAttribute("id");
        userVo.setUserId(id);
        userService.modifyInfo(userVo);
        return "redirect:/myinfo";
    }

    @GetMapping("/myinfo")
    public String toUserInfoPage(HttpSession session, Model model) { // 회원 정보 수정 페이지
        String id = (String) session.getAttribute("id");
        userVO userVo = userService.getUserById(id);
        model.addAttribute("userInfo", userVo);

        List<graduationVO> graduationList = userService.getGraduationById(id);
        model.addAttribute("glist",graduationList);

        List<historyVO> historyList = userService.getHistoryById(id);
        model.addAttribute("hlist",historyList);

        List<listVO> listVo = userService.getListById(id);
        model.addAttribute("list",listVo);


        return "user/myinfo";
    }
    @GetMapping("/myinfo2")
    public String toUserInfoPage2(HttpSession session, Model model) { // 회원 정보 수정 페이지
        String id = (String) session.getAttribute("id");
        userVO userVo = userService.getUserById(id);
        model.addAttribute("userInfo", userVo);

        List<graduationVO> graduationList = userService.getGraduationById(id);
        model.addAttribute("glist",graduationList);

        List<historyVO> historyList = userService.getHistoryById(id);
        model.addAttribute("hlist",historyList);

        List<listVO> listVo = userService.getListById(id);
        model.addAttribute("list",listVo);


        return "user/myinfo2";
    }
    @GetMapping("/mylist")
    public String toUserListPage(HttpSession session, Model model) { // 회원 정보 수정 페이지
        String id = (String) session.getAttribute("id");

        List<listVO> listVo = userService.getListByIdAfterNow(id);
        model.addAttribute("listA",listVo);

        List<listVO> listVoBefore = userService.getListByIdBeforeNow(id);
        model.addAttribute("listB",listVoBefore);

        return "user/myList";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) { // 로그아웃
        session.invalidate();
        System.out.println("logout");
        return "redirect:/home";
    }
    //학력
    @GetMapping("/addgrad")
    public String toAddGradPage() {  //회원가입 페이지
        return "user/addGrad";
    }

    @PostMapping("/addgrad")
    public String addGrad(HttpSession session, graduationVO gVo) { // 회원가입
        try {
            userService.insertGraduation(gVo);
        } catch (DuplicateKeyException e) {
            return "redirect:/signup?error_code=-1";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/signup?error_code=-99";
        }
        return "redirect:/myinfo";
    }

    @GetMapping("/updategrad")
    public String toupdateGrad(@RequestParam("num") int num,HttpSession session, Model model) { // 회원 정보 수정
        String id = (String) session.getAttribute("id");
        graduationVO gVo = userService.getGraduationByIdNum(id, num);
        model.addAttribute("graduation",gVo);
        return "user/updateGrad";
    }
    @PostMapping("/updategrad")
    public String updateGrad(HttpSession session, graduationVO gVo) { // 회원 정보 수정
        userService.updateGrduation(gVo);
        return "redirect:/myinfo";
    }
    @GetMapping("/deletegrad")
    public String deleteGrad(@RequestParam("num") int num) { // 회원 정보 수정
        userService.deleteGraduation(num);

        return "redirect:/myinfo";
    }
    //경력
    @GetMapping("/addhis")
    public String toAddHistoryPage() {  //회원가입 페이지
        return "user/addHis";
    }

    @PostMapping("/addhis")
    public String addHistory(HttpSession session, historyVO hVo) { // 회원가입
        try {
            String id = (String) session.getAttribute("id");
            userService.insertHistory(hVo);
        } catch (DuplicateKeyException e) {
            return "redirect:/signup?error_code=-1";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/signup?error_code=-99";
        }
        return "redirect:/myinfo";
    }
    @GetMapping("/updatehis")
    public String toupdateHistory(@RequestParam("num") int hnum,HttpSession session, Model model) { // 회원 정보 수정
        String id = (String) session.getAttribute("id");
        historyVO hVo = userService.getHistoryByIdNum(id, hnum);
        model.addAttribute("history",hVo);
        return "user/updateHis";
    }
    @PostMapping("/updatehis")
    public String updateHistory(historyVO hVo) { // 회원 정보 수정
        userService.updateHistroy(hVo);
        return "redirect:/myinfo";
    }
    @GetMapping("/deletehis")
    public String deleteHistory(@RequestParam("num") int hnum) { // 회원 정보 수정
        userService.deleteHistory(hnum);

        return "redirect:/myinfo";
    }
    //이력서
    @GetMapping("/updatelist")
    public String toupdateList(@RequestParam("num") int num,HttpSession session, Model model) { // 회원 정보 수정
        String id = (String) session.getAttribute("id");
        listVO listVo = userService.getListByNum(num);
        model.addAttribute("list",listVo);
        return "user/updateList";
    }
    @PostMapping("/updatelist")
    public String updateHistory(listVO listVo) { // 회원 정보 수정
        userService.updateList(listVo);
        return "redirect:/mylist";
    }
    @GetMapping("/deletelist")
    public String deleteList(@RequestParam("num") int num) { // 회원 정보 수정
        userService.deleteList(num);

        return "redirect:/mylist";
    }
    @GetMapping("/addlist")
    public String toAddListPage() {  //회원가입 페이지
        return "user/addList";
    }

    @PostMapping("/addlist")
    public String addList(HttpSession session, listVO listVo) { // 회원가입
        try {
            String id = (String) session.getAttribute("id");
            userService.insertList(listVo);
        } catch (DuplicateKeyException e) {
            return "redirect:/signup?error_code=-1";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/signup?error_code=-99";
        }
        return "redirect:/myinfo";
    }

}
