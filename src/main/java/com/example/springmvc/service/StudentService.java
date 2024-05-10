package com.example.springmvc.service;

import com.example.springmvc.model.Student;
import com.example.springmvc.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class StudentService {

    @Autowired
    private StudentRepository studentRepository;

    public List<Student> getAllStudents(){
        return studentRepository.findAll();
    }
    public Student getStudentById(int id){
        return studentRepository.findById(id).get();
    }
    public void saveOrUpdate(Student student){
        studentRepository.save(student);
    }
    public void delete(int id){
        studentRepository.deleteById(id);
    }
    public void update(Student student, int id){
        studentRepository.save(student);
    }
}
