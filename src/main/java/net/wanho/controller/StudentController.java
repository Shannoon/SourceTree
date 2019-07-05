package net.wanho.controller;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Student;
import net.wanho.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class StudentController {

    @Autowired
    private StudentServiceI studentServiceI;


    @RequestMapping("getAllStus")
    public String getAllStus(@RequestParam(value = "pageNum",defaultValue = "1")  Integer pageNum ,Map map) {

        PageInfo<Student> pageInfo = studentServiceI.getAllStus(pageNum);

        map.put("PageInfo", pageInfo);
        return "stuList";
    }

    @RequestMapping("GoAdd")
    public String goAdd(){
        return "add";
    }

    @RequestMapping("addstu")
    public String addStu(Student student){

        studentServiceI.addStu(student);
        return "redirect:getAllStus";
    }

    @RequestMapping("/delete")
    public String delStu(String id){
        studentServiceI.delete(Integer.parseInt(id));
        return "redirect:getAllStus";
    }

    @RequestMapping("Toupdate")
    public ModelAndView Toupdate(String id){
       Student student= studentServiceI.queryById(Integer.parseInt(id));
        ModelAndView mad = new ModelAndView("update","student",student);
        return mad;
    }

    @RequestMapping("update")
    public String update(Student student){
        studentServiceI.update(student);
        return "redirect:getAllStus";
    }


}
