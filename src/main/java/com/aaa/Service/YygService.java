package com.aaa.Service;

import java.util.List;
import java.util.Map;

public interface YygService {
    //查询汇办案件信息
    public List<Map> GetHb(Map map);

    //更改分案状态
    //向idea表添加处理意见
    public int UpdateFa(String hbid,String yj);
}
