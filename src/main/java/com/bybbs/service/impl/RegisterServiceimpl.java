package com.bybbs.service.impl;

import com.bybbs.domain.User;
import com.bybbs.mapper.UserMapper;
import com.bybbs.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RegisterServiceimpl implements RegisterService {
    @Autowired
    private UserMapper userMapper;



    @Override
    public Map<String, Object> register(String reAuthCode,String authCode,User user) {
        //返回注册状态
        HashMap<String,Object> stateMap = new HashMap<>();
        String name = user.getUser_name();
        List<User> users =  userMapper.login(name);
        System.out.println("####################user"+user);
        String msg = "msg";
        System.out.println("123123123123123user1"+user);
        if (authCode.equals(reAuthCode)) {
            if ((users.size() == 0 && name != null)) {
                userMapper.register(user);
                stateMap.put("status", "200");
                stateMap.put(msg, "注册成功");
            }else{
                stateMap.put("status", "401");
                stateMap.put(msg, "该用户已经存在");
            }
        }else {
            stateMap.put("status","402");
            stateMap.put(msg,"验证码错误");
        }

        return  stateMap;
    }
}
