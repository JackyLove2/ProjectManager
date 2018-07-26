package com.ujiuye.mapper;

import com.ujiuye.bean.Attachment;
import com.ujiuye.bean.AttachmentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AttachmentMapper {
    long countByExample(AttachmentExample example);

    int deleteByExample(AttachmentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Attachment record);

    int insertSelective(Attachment record);

    List<Attachment> selectByExampleWithBLOBs(AttachmentExample example);

    List<Attachment> selectByExample(AttachmentExample example);

    Attachment selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Attachment record, @Param("example") AttachmentExample example);

    int updateByExampleWithBLOBs(@Param("record") Attachment record, @Param("example") AttachmentExample example);

    int updateByExample(@Param("record") Attachment record, @Param("example") AttachmentExample example);

    int updateByPrimaryKeySelective(Attachment record);

    int updateByPrimaryKeyWithBLOBs(Attachment record);

    int updateByPrimaryKey(Attachment record);
}