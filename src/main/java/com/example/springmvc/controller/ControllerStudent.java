package com.example.springmvc.controller;

import com.example.springmvc.service.StudentService;
import com.example.springmvc.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class ControllerStudent {
    @Autowired
    StudentService studentService;
    @GetMapping("/list")
    public String showList(Model model) {
        List<Student> students = studentService.getAllStudents();
        model.addAttribute("students", students);
        return "list";
    }
    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("student", new Student());
        return "form";
    }
    @PostMapping("/save")
    public String save(Student student) {
        studentService.saveOrUpdate(student);
        return "redirect:/list";
    }
    @GetMapping("/edit")
    public String edit(Model model, int id) {
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        return "form";
    }
    @GetMapping("/delete")
    public String delete(int id) {
        studentService.delete(id);
        return "redirect:/list";
    }

}
