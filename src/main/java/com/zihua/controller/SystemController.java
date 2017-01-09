package com.zihua.controller;

import com.zihua.entity.User;
import com.zihua.service.SystemService;
import com.zihua.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by zihua on 16-12-25.
 */
@Controller
@RequestMapping(value = "/")
public class SystemController {
    @Autowired
    private UserService userService;
    @Autowired
    private SystemService systemService;

    @RequestMapping(value = "/")
    public String welcome() {
        return "welcome";
    }

    @RequestMapping(value = "/register")
    public String register() {
        return "register";
    }

    @RequestMapping(value = "/login")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/home")
    public String home() {
        return "home";
    }

    @RequestMapping(value = "/adduser", method = RequestMethod.POST)
    public String addUser(@Validated User user, Model model) {
        userService.addUser(user);
        return "redirect:/login";
    }

    @RequestMapping(value = "/check", method = RequestMethod.POST)
    public String check(String username, String password, HttpServletRequest request) {
        boolean ok = userService.checkLogin(username, password);
        if (ok) {
            systemService.getSession(request, username);
            return "redirect:/home";
        } else {
            return "redirect:/login";
        }

    }

    @RequestMapping(value = "more_info",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String getInfos(HttpServletRequest request){
        String infos=systemService.getInfos(request);
        return infos;
    }

}
