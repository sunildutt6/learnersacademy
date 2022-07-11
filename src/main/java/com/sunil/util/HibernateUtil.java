package com.sunil.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.sunil.entity.Address;
import com.sunil.entity.Classes;
import com.sunil.entity.PhoneNumber;
import com.sunil.entity.Student;
import com.sunil.entity.Subjects;
import com.sunil.entity.Teacher;

public class HibernateUtil {

	static SessionFactory sessionFactory;

	public static SessionFactory getSessionFactory() {
		if (sessionFactory != null)
			return sessionFactory;

		Configuration configuration = new Configuration();
		configuration.configure("hibernate.cfg.xml");
		
		configuration.addAnnotatedClass(Address.class);
		configuration.addAnnotatedClass(Classes.class);
		configuration.addAnnotatedClass(PhoneNumber.class);
		configuration.addAnnotatedClass(Student.class);
		configuration.addAnnotatedClass(Teacher.class);
		configuration.addAnnotatedClass(Subjects.class);
		
		sessionFactory = configuration.buildSessionFactory();
		return sessionFactory;
	}

}
