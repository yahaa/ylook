package com.zihua.service;

import com.google.gson.GsonBuilder;
import com.zihua.dao.InfoDao;
import com.zihua.dao.UserDao;
import com.zihua.entity.Info;
import com.zihua.entity.User;
import com.zihua.skip.Author;
import com.zihua.skip.Password;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

import static com.zihua.jsonTooks.JsonTooks.*;

/**
 * Created by zihua on 17-1-9.
 */
@Service
public class SystemService {

    @Autowired
    private UserDao userDao;
    @Autowired
    private InfoService infoService;
    @Autowired
    InfoDao infoDao;

    //服务器给用户注册 session
    public void setSession(HttpServletRequest request, String userName) {
        HttpSession session = request.getSession(true);
        session.setAttribute("www.zihua.com", userName);
        session.setMaxInactiveInterval(300);
    }

    //服务器 获取个人信息 并返回json 格式数据
    public String getUserInfo(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("www.zihua.com");
        User a = userDao.getUserByName(username);
        return getUserInfoJson(a);

    }

    public void doPublish(Info info, HttpServletRequest request) {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("www.zihua.com");
        User a = userDao.getUserByName(username);
        info.setAuthor(a);
        infoService.addHunterInfo(info);
    }

    //返回用户发布的所有消息
    public String getInfos() {
        List<Info> list = infoService.getInfos();
        return getInfosJson(list);
    }

    //通过 id 获取某条信详情
    public String getInfoById(int id) {
        return getInfoJson(infoDao.getInfoById(id));
    }

}
