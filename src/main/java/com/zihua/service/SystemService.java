package com.zihua.service;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.GsonBuilder;
import com.zihua.entity.HunterInfo;
import com.zihua.entity.User;
import com.zihua.gsonSkipCircleRelation.CircleAuthor;
import com.zihua.gsonSkipCircleRelation.CircleInfos;
import com.zihua.gsonSkipField.SkipUserPassword;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by zihua on 17-1-9.
 */
@Service
public class SystemService {

    @Autowired
    private UserService userService;
    @Autowired
    private HunterInfoService hunterInfoService;

    //服务器给用户注册 session
    public void getSession(HttpServletRequest request, String userName) {
        HttpSession session = request.getSession(true);
        session.setAttribute("www.zihua.com", userName);
        session.setMaxInactiveInterval(300);
    }

    //服务器 获取个人信息 并返回json 格式数据
    public String getPersonInfoJson(HttpServletRequest request) {
        HttpSession session = request.getSession();

        String username = (String) session.getAttribute("www.zihua.com");
        User a = userService.getUserByName(username);
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.setExclusionStrategies(new CircleAuthor());
        gsonBuilder.setExclusionStrategies(new SkipUserPassword());
        return gsonBuilder.create().toJson(a);
    }

    public void doPublish(HunterInfo info, HttpServletRequest request) {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("www.zihua.com");
        User a=userService.getUserByName(username);
        info.setAuthor(a);
        hunterInfoService.addHunterInfo(info);
    }

    //返回用户发布的消息
    public String getInfos(HttpServletRequest request){
        List<HunterInfo> list=hunterInfoService.getInfos();
        GsonBuilder gsonBuilder=new GsonBuilder();
        gsonBuilder.setExclusionStrategies(new CircleInfos()); //跳出双向引用循环关系
        gsonBuilder.setExclusionStrategies(new SkipUserPassword()); //忽略用户密码
        return gsonBuilder.create().toJson(list);

    }
}
