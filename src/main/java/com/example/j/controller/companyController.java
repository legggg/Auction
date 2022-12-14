package com.example.j.controller;

import com.example.j.service.companyService;
import com.example.j.service.userService;
import com.example.j.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class companyController {

    @Autowired
    private companyService companyService;
    @Autowired
    private userService userService;

    @GetMapping("/loginhr")
    public String toLoginCompanyPage(Model model, HttpSession session, RedirectAttributes redirect) { // 로그인 페이지
        String id = (String) session.getAttribute("id");
        if (id != null) { // 로그인된 상태
            return "redirect:/";
        }
//        ModelAndView mv=new ModelAndView("login");
//        if(redirect.getAttribute("msg")!=null){
//            mv.addObject("msg",redirect.getAttribute("msg"));
//        }
//        return mv; // 로그인되지 않은 상태
        return "/company/loginHr";
    }
    @ResponseBody
    @PostMapping("/loginhr")
    public String loginCompany(String hrId, String hrPw, HttpSession session,Model model) { // 로그인
        System.out.println("hr id: " + hrId);
        System.out.println("hr pw: " + hrPw);
        hrVO hrVo = companyService.getHrById(hrId);
        model.addAttribute("hrInfo", hrVo);
        String resultmsg = "";
        if (hrVo != null && hrVo.getHrPw().equals(hrPw)) {
            String name = hrVo.getHrName();
            session.setAttribute("id",hrId);
            session.setAttribute("state","company");
            return resultmsg = "<script>location.href='/home'</script>";
        } else{//로그인 실패시

            return resultmsg = "<script>alert('로그인 실패');location.href='/loginhr'</script>";
        }

    }

    @GetMapping("/signuphr")
    public String toSignupPage() {  //회원가입 페이지
        return "/company/signupHr";
    }

    @PostMapping("/signuphr")
    public String signupHr(hrVO hrVo) { // 회원가입
        try {
            companyService.insertCompany(hrVo.getComNum());
            companyService.insertHr(hrVo);
        } catch (DuplicateKeyException e) {
            return "redirect:/signup?error_code=-1";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/signup?error_code=-99";
        }
        return "redirect:/loginhr";
    }

    @GetMapping("/tolist")
    public String toUserInfoPage(@RequestParam("num") int num,HttpSession session, Model model) { // 회원 정보 수정 페이지
        listVO listVo =userService.getListByNum(num);
        model.addAttribute("list",listVo);
        String id=listVo.getUserId();
        userVO userVo=userService.getUserById(id);
        model.addAttribute("userInfo", userVo);

        List<graduationVO> graduationList = userService.getGraduationById(id);
        model.addAttribute("glist",graduationList);

        List<historyVO> historyList = userService.getHistoryById(id);
        model.addAttribute("hlist",historyList);

        String hrid = (String) session.getAttribute("id");
        hrVO hrVo =companyService.getHrById(hrid);
        model.addAttribute("hr",hrVo);

        List<auctionVO> auctionVo=companyService.selectAuctionByNum(num);
        model.addAttribute("auctinoListByUser", auctionVo);

        return "user/toList";
    }
    @PostMapping("/tolist")
    public String addAuacion(@RequestParam("num") int num,auctionVO auctionVo){
        companyService.insertAuction(auctionVo);
        System.out.println("insert"+auctionVo);
        return "redirect:/tolist?num="+num;
    }
    @GetMapping("/preview")
    public String toUserPriviewPage(@RequestParam("num") int num,HttpSession session, Model model) { // 회원 정보 수정 페이지
        listVO listVo =userService.getListByNum(num);
        model.addAttribute("list",listVo);
        String id=listVo.getUserId();
        userVO userVo=userService.getUserById(id);
        model.addAttribute("userInfo", userVo);

        List<graduationVO> graduationList = userService.getGraduationById(id);
        model.addAttribute("glist",graduationList);

        List<historyVO> historyList = userService.getHistoryById(id);
        model.addAttribute("hlist",historyList);

        String hrid = (String) session.getAttribute("id");
        hrVO hrVo =companyService.getHrById(hrid);
        model.addAttribute("hr",hrVo);

        List<auctionVO> auctionVo= userService.selectAuctionHrCompany(num);
        model.addAttribute("auctinoListByUser", auctionVo);

        System.out.println(auctionVo);

        return "user/previewList";
    }

    @GetMapping("/cominfo")
    public String toHrInfoPage(HttpSession session, Model model) { // 회원 정보 수정 페이지
        String id = (String) session.getAttribute("id");

        hrVO hrVo = companyService.getHrById(id);
        model.addAttribute("hrInfo", hrVo);

        List<auctionVO> auctionVo=companyService.selectAuctionAndList(id);
        model.addAttribute("auctinoList", auctionVo);

        return "company/cominfo";
    }
    @GetMapping("/updatehr")
    public String toUpdatePage(HttpSession session, Model model) { // 회원 정보 수정 페이지
        String id = (String) session.getAttribute("id");
        hrVO hrVo = companyService.getHrById(id);
        model.addAttribute("hr", hrVo);
        return "company/updateHr";
    }

    @PostMapping("/updatehr")
    public String modifyInfo(HttpSession session, hrVO hrVo) { // 회원 정보 수정
        String id = (String) session.getAttribute("id");
        companyService.updateHr(hrVo);
        return "redirect:/cominfo";
    }

}
