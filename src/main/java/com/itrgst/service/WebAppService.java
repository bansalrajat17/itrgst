package com.itrgst.service;

import com.itrgst.dao.RequestQueueDao;
import com.itrgst.dao.UserMasterDao;
import com.itrgst.orm.RequestQueue;
import com.itrgst.orm.UserMaster;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import lombok.var;

@Service
public class WebAppService {

    @Autowired
    private JavaMailSender javaMailSender;

    @Autowired
    private UserMasterDao userMasterDao;

    @Autowired
    private RequestQueueDao requestQueueDao;

    public void sendEmail(String toEmail, String subject, String message) {
        SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
        simpleMailMessage.setTo(toEmail);
        simpleMailMessage.setSubject(subject);
        simpleMailMessage.setText(message);
        javaMailSender.send(simpleMailMessage);
    }

    public String authenticate(UserMaster userMaster) {
        var userMasterVar = userMasterDao.findById(userMaster.getUsername());
        return userMasterVar.isPresent()
                ? (userMasterVar.get().getPassword().equals(userMaster.getPassword()) ? "SUCCESS"
                        : "PASSWORD IS INCORRECT")
                : "USER NOT EXIST";
    }

    public String saveRequestQueue(RequestQueue requestQueue) {
        String saveResult = "FAILED";
        Boolean emailPresent = false;
        if ((requestQueueDao.findByEmail(requestQueue.getEmail())) != null) {
            saveResult = "THANKS! FOR VISIT AGAIN \n YOUR EMAIL ALREADY REGISTERED WITH US";
            emailPresent = true;
        }
        if ((requestQueueDao.findByPhone(requestQueue.getPhone())) != null) {
            saveResult = "THANKS! FOR VISIT AGAIN \n YOUR PHONE ALREADY REGISTERED WITH US";
            if (emailPresent)
                saveResult = "THANKS! FOR VISIT AGAIN \n YOU ARE ALREADY REGISTERED WITH US";
        } else {
            if (!emailPresent) {
                if (requestQueueDao.save(requestQueue) != null)
                    saveResult = "SUCCESS";
            }
        }
        return saveResult;
    }
}
