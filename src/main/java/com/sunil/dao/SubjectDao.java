package com.sunil.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.sunil.entity.Subjects;
import com.sunil.util.HibernateUtil;

public class SubjectDao {

	public static void addSubjects(Subjects s) {
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.save(s);
		tx.commit();
		session.close();
	}

	public static List<Subjects> listSubjects() {
		List<Subjects> subjects = null;
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		subjects = session.createQuery("from Subjects").list();
		session.close();
		return subjects;

	}
}
