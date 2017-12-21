package cn.forward.common.System;

import java.util.UUID;
public class UserIdGen {
    public static String getUUId(){
        return UUID.randomUUID().toString().replace("-", "");
    }
}
