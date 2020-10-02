package com.bybbs.service;


import com.bybbs.domain.User;

import java.util.Map;

public interface RegisterService {

    Map<String, Object> register(String reAuthCode,String authCode,User user);
}
