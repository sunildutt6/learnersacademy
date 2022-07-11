package com.sunil.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.sunil.entity.Classes;
import com.sunil.util.HibernateUtil;

public class ClassDao {

	public static void addClass(Classes c) {
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.save(c);
		tx.commit();
		session.close();
	}

	public static List<Classes> listClasses() {
		List<Classes> classes = null;
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		classes = session.createQuery("from Classes").list();
		session.close();
		return classes;
	}
}
