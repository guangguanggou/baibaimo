package com.aaa.Dao;

import com.aaa.Entity.Quanxian;

import java.util.List;
import java.util.Map;

public interface LoginDao {
    List<Quanxian> getAdmin(Map map);
    List<Map> getAdmin2(String anum);
}
