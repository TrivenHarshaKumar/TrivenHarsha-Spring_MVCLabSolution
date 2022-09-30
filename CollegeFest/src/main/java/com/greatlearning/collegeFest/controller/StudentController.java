package com.greatlearning.collegeFest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatlearning.collegeFest.dao.StudentDao;
import com.greatlearning.collegeFest.model.Student;

@Controller
@RequestMapping("students")
public class StudentController {
	@Autowired
	StudentDao studentDao;

	@GetMapping("list")
	public String listStudents(Model model) {
		List<Student> students = studentDao.findAll();
		model.addAttribute("students", students);
		return "student-list";
	}

	@GetMapping("showForm")
	public String showStudentForm(Model model) {
		Student st = new Student();
		model.addAttribute("student", st);
		return "student-form";
	}

	@PostMapping("save")
	public String saveStudent(Model model, @ModelAttribute("student") Student student) {
		studentDao.saveStudent(student);
		return "redirect:/students/list";
	}

	@GetMapping("update")
	public String updateStudent(Model model, @RequestParam("id") int id) {
		Student st = studentDao.findById(id);
		model.addAttribute("student", st);
		return "student-form";
	}

	@GetMapping("delete")
	public String deleteStudent(Model model, @RequestParam("id") int id) {
	    studentDao.deleteStudent(id);
	    return "redirect:/students/list";
	}
	
}

