package net.wanho.mapper;

import net.wanho.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by fenzx on 2019/4/18.
 */
public interface StudentMapper {
    List<Student> getAllStus();

    void addStu(Student student);

    void delete(Integer id);

    void update(Student student);

    Student queryById(Integer id);



}
