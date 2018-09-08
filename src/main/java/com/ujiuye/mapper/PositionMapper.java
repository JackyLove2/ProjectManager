package com.ujiuye.mapper;

import com.ujiuye.bean.Position;
import com.ujiuye.bean.PositionExample;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

public interface PositionMapper {

    List<Position> getPosition(HashMap<String,Object> map);

    long countByExample(PositionExample example);

    int deleteByExample(PositionExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Position record);

    int insertSelective(Position record);

    List<Position> selectByExample(PositionExample example);

    Position selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Position record, @Param("example") PositionExample example);

    int updateByExample(@Param("record") Position record, @Param("example") PositionExample example);

    int updateByPrimaryKeySelective(Position record);

    int updateByPrimaryKey(Position record);
}