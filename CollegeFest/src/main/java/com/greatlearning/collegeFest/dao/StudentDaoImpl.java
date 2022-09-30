package com.greatlearning.collegeFest.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.greatlearning.collegeFest.model.Student;

@Repository
public class StudentDaoImpl implements StudentDao {
	@Autowired
	SessionFactory factory;

	@Override
	@Transactional
	public void saveStudent(Student student) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(student);

	}

	@Override
	@Transactional
	public void deleteStudent(int id) {
		Session session = factory.getCurrentSession();
		Student st = session.get(Student.class, id);
		session.delete(st);

	}

	@Override
	@Transactional
	public Student findById(int id) {
		Session session = factory.getCurrentSession();
		return session.get(Student.class, id);
	}

	@Override
	@Transactional
	public List<Student> findAll() {
		Session session = factory.getCurrentSession();
		Criteria ct = session.createCriteria(Student.class);
		return ct.list();
	}

}
