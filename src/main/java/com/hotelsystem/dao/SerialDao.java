

package com.hotelsystem.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import com.hotelsystem.bean.SerialBean;

public interface SerialDao {
    int insert(@Param("serialBean") SerialBean serialBean);

    int insertSelective(@Param("serialBean") SerialBean serialBean);

    int insertList(@Param("serialBeans") List<SerialBean> serialBeans);

    int update(@Param("serialBean") SerialBean serialBean);

}
