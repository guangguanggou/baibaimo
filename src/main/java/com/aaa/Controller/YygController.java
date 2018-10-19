package com.aaa.Controller;

import com.aaa.Entity.YygFz;
import com.aaa.Service.YygService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/BBM101")
public class YygController {
    @Autowired
    private YygService ser;

    //跳转主jsp
    @RequestMapping("/Hbcl")
    public String Hbcl(){
        return "/jsp/yyg/Hbcl.jsp";
    }

    //查询汇办案件信息
    @RequestMapping("/GetHb")
    public @ResponseBody List<Map> GetHb(YygFz map){
        List<Map> list= ser.GetHb(map.getMap());
        return list;
    }

    //更改分案状态
    //向idea表添加处理意见
    @RequestMapping("/updateFa")
    public @ResponseBody String updateFa(String hbid,String yj){
        ser.UpdateFa(hbid,yj);
        return "true";
    }


}
