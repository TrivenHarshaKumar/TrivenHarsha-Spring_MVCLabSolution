package com.greatlearning.collegeFest.dao;

import java.util.List;

import com.greatlearning.collegeFest.model.Student;

public interface StudentDao {
    
	public void saveStudent(Student student);
	public void deleteStudent(int id);
	public Student findById(int id);
	public List<Student>findAll();
}
