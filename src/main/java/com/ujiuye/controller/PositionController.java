package com.ujiuye.controller;

import com.ujiuye.bean.Position;
import com.ujiuye.service.PositionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("position")
public class PositionController {
    @Resource
    private PositionService positionService;

    @RequestMapping("getPosition")
    @ResponseBody
    public List<Position> getPosition(String id){
        HashMap<String, Object> map = new HashMap<>();
        map.put("id",id);
        List<Position> list = positionService.getPosition(map);
        return list;
    }
}
