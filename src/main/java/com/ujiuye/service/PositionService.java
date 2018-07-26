package com.ujiuye.service;

import com.ujiuye.bean.Position;

import java.util.HashMap;
import java.util.List;

public interface PositionService {

    List<Position> get_all_position(HashMap<String,Object> map);
}
