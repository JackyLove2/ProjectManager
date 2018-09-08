package com.ujiuye.service;

import com.ujiuye.bean.Position;

import java.util.HashMap;
import java.util.List;

public interface PositionService {

    List<Position> getPosition(HashMap<String,Object> map);
}
