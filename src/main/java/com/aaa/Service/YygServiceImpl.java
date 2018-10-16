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
    @Override
    public List<Map> GetHb() {
        return dao.GetHb();
    }
}
