package com.bybbs.service.impl;

import com.bybbs.domain.User;
import com.bybbs.mapper.UserMapper;
import com.bybbs.service.ListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ListServiceImpl implements ListService {

    @Autowired
    private UserMapper userMapper;


    @Override
    public List<User> findAll() {

        List<User> users = userMapper.findAll();

        return users;
    }
}
