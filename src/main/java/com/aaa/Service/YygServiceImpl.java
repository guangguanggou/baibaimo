package com.aaa.Service;

import com.aaa.Dao.YygDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class YygServiceImpl implements YygService {
    @Autowired
    private YygDao dao;

    //查询汇办案件信息
    @Override
    public List<Map> GetHb(Map map) {
        return dao.GetHb(map);
    }

    //更改分案状态
    //向idea表添加处理意见
    @Override
    public int UpdateFa(String hbid, String yj) {
        dao.UpdateFa(hbid);
        dao.InsertIdea(hbid,yj);
        return 1;
    }
}
