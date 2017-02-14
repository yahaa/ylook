package com.zihua.skip;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;

/**
 * Created by zihua on 17-1-9.
 */
public class Author implements ExclusionStrategy{
    @Override
    public boolean shouldSkipField(FieldAttributes fieldAttributes) {
        if(fieldAttributes.getName()=="author")return true;
        return false;
    }

    @Override
    public boolean shouldSkipClass(Class<?> aClass) {
        return false;
    }
}
