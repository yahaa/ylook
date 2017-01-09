package com.zihua.service;

import com.zihua.dao.HunterInfoDao;
import com.zihua.entity.HunterInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zihua on 17-1-8.
 */
@Service
public class HunterInfoService {
    @Autowired
    private HunterInfoDao hunterInfoDao;

    public void addHunterInfo(HunterInfo hunterInfo){
        hunterInfoDao.addHunterInfo(hunterInfo);
    }

    public List<HunterInfo> getInfos(){
        return hunterInfoDao.getInfos();
    }

}
