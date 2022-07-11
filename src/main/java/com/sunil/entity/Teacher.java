package com.sunil.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "t_072022")
public class Teacher {

	@Id
	@GeneratedValue
	@Column(name = "t_id")
	private int id;

	@Column(name = "t_fname")
	private String firstname;

	@Column(name = "t_lname")
	private String lastname;

	@Embedded
	private Address address;

	@Embedded
	private PhoneNumber phonenumber;

	@OneToMany(mappedBy = "teacher", cascade = CascadeType.ALL)
	private List<Classes> classes;

	@OneToMany(mappedBy = "teacher", cascade = CascadeType.ALL)
	private List<Subjects> subjects;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getAddress() {
		if (address == null) {
			return " ";
		} else
			return address.getCity() + ", " + address.getState() + ", " + address.getPin();
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public String getPhonenumber() {
		if (phonenumber == null) {
			return " ";
		} else
			return phonenumber.getHome() + "---" + phonenumber.getWork();
	}

	public void setPhonenumber(PhoneNumber phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getClasses() {
		StringBuilder sb = new StringBuilder();
		if (classes != null && classes.size() > 0) {
			for (Classes c : classes) {
				sb.append(c.getName());
			}
		}
		return sb.toString();

	}

	public void setClasses(List<Classes> classes) {
		this.classes = classes;
	}

	public List<Subjects> getSubjects() {
		return subjects;
	}

	public void setSubjects(List<Subjects> subjects) {
		this.subjects = subjects;
	}

}
