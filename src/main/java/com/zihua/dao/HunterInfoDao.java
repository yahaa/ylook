package com.zihua.dao;

import com.zihua.entity.HunterInfo;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

/**
 * Created by zihua on 17-1-8.
 * 用户发布消息dao 层
 * Hunterinfo中  title,detail 为必填字段
 */
@Repository
public class HunterInfoDao {
    @Resource
    private SessionFactory sessionFactory;


    @SuppressWarnings("unused")
    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }


    public void addHunterInfo(HunterInfo hunterInfo){
        this.getSession().save(hunterInfo);
    }
}
