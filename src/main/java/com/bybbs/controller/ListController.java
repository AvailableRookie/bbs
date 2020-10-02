package com.bybbs.controller;

import com.bybbs.domain.User;
import com.bybbs.service.ListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("list")
public class ListController {

    @Autowired
    private ListService listService;

    @RequestMapping("listUser")
    public String listUser(Model model){

        List<User> users = listService.findAll();
        HashMap<String,List<User>> map = new HashMap<String, List<User>>();
        map.put("users",users);
        model.addAllAttributes(map);
        return "list";
    }

}
