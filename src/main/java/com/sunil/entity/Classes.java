package com.sunil.entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "class_072022")
public class Classes {

	@Id
	@GeneratedValue
	@Column(name = "c_id")
	private int id;

	@Column(name = "c_name")
	private String name;

	@Column(name = "c_type")
	private String type;

	@OneToOne(cascade = CascadeType.ALL)
	private Student student;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "t_id")
	private Teacher teacher;

	// getters and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		if (type == null) {
			return " ";
		} else {
			return type;
		}
	}

	public void setType(String type) {
		this.type = type;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

}
