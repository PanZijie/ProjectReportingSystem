package com.bishe.ProjectReportingSystem.dao;

import com.bishe.ProjectReportingSystem.model.ApplyTable;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface DraftTableDao {
    String TABLE_NAME="drafttable";
    String INSET_FIELDS=" course_name, course_type, principal, tel," +
            " credit, remark, belong, status, create_date";
    String SELECT_FIELDS=" id"+INSET_FIELDS;

    @Insert({"{insert into ", TABLE_NAME,"(",INSET_FIELDS,") " +
            "value (#{courseName},#{courseType},#{principal},#{tel},#{credit}," +
            "#{remark},#{belong},#{status},#{create_date}"})
    int addApplyTable(ApplyTable applyTable);

    @Select({"select ", SELECT_FIELDS , " from ", TABLE_NAME, " where id=#{id}"})
    ApplyTable getById(int id);

    @Update({"update ", TABLE_NAME, " set status = #{status} where id=#{id}"})
    int updateStatus(@Param("id") int id, @Param("status") int status);

    /*
    List<ApplyTable> selectByStatusAndOffset(@Param("status") int status, @Param("offset") int offset,
                                             @Param("limit") int limit);
    */



}
