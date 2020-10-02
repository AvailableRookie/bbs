package com.bybbs.controller;


import com.bybbs.domain.User;
import com.bybbs.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("register")
public class RegisterUserController {

    @Autowired
    private RegisterService registerService;


    @RequestMapping(value = "registerUser", produces = "text/plain;charset=UTF-8")
    public String register(@RequestParam(value = "authCode", required = false, defaultValue = "null") String reAuthCode, User user, HttpSession session, ModelMap mm) {
        System.out.println("22222222222222222222222222222222222" + user);

        String authCode = (String) session.getAttribute("authCode");

        Map<String, Object> map = registerService.register(reAuthCode, authCode, user);

        if (map.get("status").equals("200")) {
            System.out.println("恭喜你注册成功");
            mm.addAttribute("result", "恭喜你注册成功");
            return "succeed";
        }
        if (map.get("status").equals("401")) {
            mm.addAttribute("result", "用户名已存在");
            return "register";
        }
        if (map.get("status").equals("402")) {
            mm.addAttribute("result", "验证码错误");
            return "register";
        }

        System.out.println("注册失败");
        mm.addAttribute("result", "服务器错误");
        return "register";
    }
}

