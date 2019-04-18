package net.wanho.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanho.mapper.StudentMapper;
import net.wanho.pojo.Student;
import net.wanho.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentServiceI {

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public PageInfo<Student> getAllStus(Integer pageNum) {
        //设置分页信息
        PageHelper.startPage(pageNum,4);
        List<Student> studentList=studentMapper.getAllStus();
        PageInfo<Student> pageInfo=new PageInfo<Student>(studentList);


        return pageInfo;

    }

    @Override
    public void addStu(Student student) {
        studentMapper.addStu(student);
    }

    @Override
    public void delete(Integer id) {
        studentMapper.delete(id);
    }

    @Override
    public void update(Student student) {
        studentMapper.update(student);
    }

    @Override
    public Student queryById(Integer id) {
        return studentMapper.queryById(id);
    }
}
