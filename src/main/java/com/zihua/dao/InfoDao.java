package com.zihua.dao;

import com.zihua.entity.Info;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

import static com.zihua.jsonTooks.JsonTooks.getInfoJson;

/**
 * Created by zihua on 17-1-8.
 * 用户发布消息dao 层
 * Hunterinfo中  title,detail 为必填字段
 */
@Repository
public class InfoDao {
    @Resource
    private SessionFactory sessionFactory;


    @SuppressWarnings("unused")
    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }


    public void addInfo(Info info){
        this.getSession().save(info);
    }

    public List<Info> getInfos(){
        return this.getSession().createQuery("from Info").list();
    }

    public Info getInfoById(int id){
        Info info =this.getSession().get(Info.class,id);
        return info;
    }
}
