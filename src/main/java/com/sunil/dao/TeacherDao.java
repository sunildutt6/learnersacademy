package com.sunil.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.sunil.entity.Teacher;
import com.sunil.util.HibernateUtil;

public class TeacherDao {

	
	public static void addTeacher(Teacher t) {
		SessionFactory sf=  HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.save(t);
		tx.commit();
		session.close();
		
		
	}
	
	public static List<Teacher> listTeacher(){
		List<Teacher> teacher = null;
		SessionFactory sf=  HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		teacher = session.createQuery("from Teacher").list();
		session.close();
		return teacher;
	}
}
