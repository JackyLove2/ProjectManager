package com.ujiuye.serviceimpl;

import com.ujiuye.bean.Position;
import com.ujiuye.mapper.PositionMapper;
import com.ujiuye.service.PositionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service("positionService")
public class PositionServiceImpl implements PositionService {

    @Resource
    private PositionMapper positionMapper;

    @Override
    public List<Position> getPosition(HashMap<String, Object> map) {
        List<Position> list = positionMapper.getPosition(map);
        return list;
    }
}
