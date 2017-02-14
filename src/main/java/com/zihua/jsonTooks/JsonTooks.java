package com.zihua.jsonTooks;

import com.google.gson.GsonBuilder;
import com.zihua.skip.Author;
import com.zihua.skip.Infos;
import com.zihua.skip.Password;

/**
 * Created by zihua on 17-2-14.
 */
public class JsonTooks {
    public static String getInfoJson(Object object) {
        GsonBuilder gb = new GsonBuilder();
        gb.setExclusionStrategies(new Infos());
        gb.setExclusionStrategies(new Password());
        return gb.create().toJson(object);
    }

    public static String getInfosJson(Object object) {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.setExclusionStrategies(new Infos()); //跳出双向引用循环关系
        gsonBuilder.setExclusionStrategies(new Password()); //忽略用户密码
        return gsonBuilder.create().toJson(object);
    }

    public static String getUserInfoJson(Object object) {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.setExclusionStrategies(new Author());
        gsonBuilder.setExclusionStrategies(new Password());
        return gsonBuilder.create().toJson(object);
    }
}
