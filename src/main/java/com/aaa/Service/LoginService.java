package com.aaa.Service;

import com.aaa.Entity.Quanxian;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface LoginService {
    List<Quanxian> getAdmin(Map map);
    List<Map> getAdmin2(String anum);
    Set<String> getRole(String anum);
    Map getUser(Map map);
    List<Quanxian> getRole2(Integer aid);
}
