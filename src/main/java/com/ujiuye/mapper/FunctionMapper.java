package com.ujiuye.mapper;

import com.ujiuye.bean.Function;
import com.ujiuye.bean.FunctionExample;
import com.ujiuye.bean.FunctionWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FunctionMapper {
    long countByExample(FunctionExample example);

    int deleteByExample(FunctionExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(FunctionWithBLOBs record);

    int insertSelective(FunctionWithBLOBs record);

    List<FunctionWithBLOBs> selectByExampleWithBLOBs(FunctionExample example);

    List<Function> selectByExample(FunctionExample example);

    FunctionWithBLOBs selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") FunctionWithBLOBs record, @Param("example") FunctionExample example);

    int updateByExampleWithBLOBs(@Param("record") FunctionWithBLOBs record, @Param("example") FunctionExample example);

    int updateByExample(@Param("record") Function record, @Param("example") FunctionExample example);

    int updateByPrimaryKeySelective(FunctionWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(FunctionWithBLOBs record);

    int updateByPrimaryKey(Function record);
}