package com.aaa.Controller;

import com.aaa.Entity.YygFz;
import com.aaa.Service.YygService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/BBM101")
public class YygController {
    @Autowired
    private YygService ser;
    //查询汇办案件信息
    @RequestMapping("/GetHb")
    public @ResponseBody List<Map> GetHb(YygFz map){
        System.out.println(map.getMap().get("cxrxm"));
        List<Map> list= ser.GetHb(map.getMap());
        System.out.println(list.size());
        System.out.println(list);
        return list;
    };
}
