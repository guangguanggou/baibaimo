package com.aaa.Service;

import com.aaa.Dao.LoginDao;
import com.aaa.Entity.Quanxian;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @ClassName LoginServiceImpl
 * @Description //TODO
 * @Auther YanAn
 * @Date 2018/10/10 12:09
 * @Version 1.0
 **/
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginDao loginDao;
    @Override
    public List<Quanxian> getAdmin(Map map) {
        return loginDao.getAdmin(map);
    }

    @Override
    public List<Map> getAdmin2(String anum) {
        return loginDao.getAdmin2(anum);
    }

    @Override
    public Set<String> getRole(String anum) {
        return loginDao.getRole(anum);
    }

    @Override
    public Map getUser(Map map) {
        return loginDao.getUser(map);
    }
}
