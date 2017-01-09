package com.zihua.controller;

import com.zihua.entity.HunterInfo;
import com.zihua.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by zihua on 16-12-29.
 */

@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    private SystemService systemService;


    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        session.removeAttribute("www.zihua.com");
        return "redirect:/";
    }

    @RequestMapping(value = "/personal_center")
    public String personCenter() {
        return "personal_center";
    }


    @RequestMapping(value = "/person_info", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String personInfo(HttpServletRequest request) {
        String s = systemService.getPersonInfoJson(request);
        return s;
    }

    @RequestMapping(value = "/publish")
    public String publish() {
        return "publish";
    }

    @RequestMapping(value = "/do_publish", method = RequestMethod.POST)
    public String doPublish(@Validated HunterInfo hunterInfo, HttpServletRequest request) {
        systemService.doPublish(hunterInfo, request);
        return "redirect:/home";

    }


}
