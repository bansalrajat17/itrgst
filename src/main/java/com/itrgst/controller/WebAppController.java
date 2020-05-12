package com.itrgst.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.itrgst.orm.RequestQueue;
import com.itrgst.orm.UserMaster;
import com.itrgst.response.JwtResponse;
import com.itrgst.service.UserMasterService;
import com.itrgst.service.WebAppService;
import com.itrgst.util.JwtTokenUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.MailAuthenticationException;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
public class WebAppController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private UserMasterService userMasterService;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @Autowired
    private WebAppService webAppService;

    private void authenticateUPAT(String username, String password) throws Exception {
        try {
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
        } catch (DisabledException e) {
            throw new Exception("USER_DISABLED", e);
        } catch (BadCredentialsException e) {
            throw new Exception("INVALID_CREDENTIALS", e);
        }
    }

    @PostMapping("authenticate")
    public ResponseEntity<?> authenticate(@RequestBody UserMaster userMaster) throws Exception {

        // VERIFYING USERNAME AND PASSWORD
        authenticateUPAT(userMaster.getUsername(), userMaster.getPassword());

        final String jwtToken = jwtTokenUtil
                .generateToken(userMasterService.loadUserByUsername(userMaster.getUsername()));
        return ResponseEntity.ok(new JwtResponse(jwtToken));
    }

    @GetMapping("authenticate/login/get/UserMaster/{username}")
    public UserMaster getUserMaster(@PathVariable String username) {
        UserDetails userDetails = userMasterService.loadUserByUsername(username);
        return UserMaster.builder().username(userDetails.getUsername()).password(userDetails.getPassword()).build();
    }

    @PostMapping("save/RequestQueue")
    public String saveRequestQueue(@RequestBody RequestQueue requestQueue) {
        String saveResult = (webAppService.saveRequestQueue(requestQueue));
        if (saveResult.equals("SUCCESS")) {
            try {
                webAppService.sendEmail(requestQueue.getEmail(), "Welcome to ReturnFiling", "HAHA");
            } catch (MailAuthenticationException e) {
                System.out.println("MAIL NOT SENT");
            }
        }
        return saveResult;
    }
}
