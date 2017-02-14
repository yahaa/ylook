package com.zihua.service;

import com.zihua.dao.InfoDao;
import com.zihua.entity.Info;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zihua on 17-1-8.
 */
@Service
public class InfoService {
    @Autowired
    private InfoDao infoDao;

    public void addHunterInfo(Info info){
        infoDao.addInfo(info);
    }

    public List<Info> getInfos(){
        return infoDao.getInfos();
    }

}
