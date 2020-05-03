package com.itrgst.service;

import java.util.Optional;

import com.itrgst.dao.UserMasterDao;
import com.itrgst.orm.UserMaster;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserMasterService implements UserDetailsService {

    @Autowired
    private UserMasterDao userMasterDao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<UserMaster> optional = userMasterDao.findById(username);
        UserMaster userMaster = null;
        if (optional.isPresent())
             userMaster = optional.get();
        return userMaster;
    }
}