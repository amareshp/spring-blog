package com.visitamaresh.ws.user;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user")
public class UserController {
    private static Logger logger = Logger.getLogger(new Exception().getStackTrace()[0].getClassName());
    
    @Autowired
    private UserDetailsService userDetailsService;
    
    @RequestMapping("/details")
    public String hello(@RequestParam(value="username", required=false) String username,
            Model model) {
        logger.info("username: " + username);
        if(username == null) {
            model.addAttribute("msg", "Hello user...");
        } else {
            model.addAttribute("msg", "Hello " + userDetailsService.loadUserByUsername(username) );
        }
            return "user/result";
    }
}