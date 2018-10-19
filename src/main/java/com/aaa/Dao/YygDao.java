package com.aaa.Dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface YygDao {
    //查询汇办案件信息
    public List<Map> GetHb(Map map);

    //更改分案状态
    public int UpdateFa(@Param("hbid") String hbid);

    //向idea表添加处理意见
    public int InsertIdea(@Param("hbid") String hbid,@Param("yj") String yj);
}
