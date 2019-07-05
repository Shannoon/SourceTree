package net.wanho.service;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Student;

import java.util.List;

public interface StudentServiceI {

    PageInfo<Student> getAllStus(Integer pageNum);

    void addStu(Student student);

    void delete(Integer id);

    void update(Student student);

    Student queryById(Integer id);
}
