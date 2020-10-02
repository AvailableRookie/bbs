
package com.bybbs.controller;


import com.bybbs.domain.User;
import com.bybbs.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;


@Controller

@RequestMapping("login")

public class LoginController {

    @Autowired
    private LoginService loginService;



    @RequestMapping("toLogin")
    public String toLogin() {

        return "login";

    }



    @RequestMapping("login")
    public String login(User user, Model model) {

        String loginname = user.getUser_name();

        String password = user.getUser_pswd();

        Map<String, Object> map = loginService.login(loginname, password);

        if (map.get("status").equals("200")) {

            return "register";
        } else {

            model.addAttribute("error", map.get("msg"));

            return "login";
        }
    }
}
