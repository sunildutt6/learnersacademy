package com.sunil.entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "student_072022")
public class Student {

	@Id
	@GeneratedValue
	@Column(name = "s_id")
	private long id;

	@Column(name = "s_fname")
	private String firstname;

	@Column(name = "s_lname")
	private String lastname;

	@Column(name = "s_email")
	private String email;

	@Embedded
	private Address address;

	@Embedded
	private PhoneNumber phonenumber;

	@OneToOne(cascade = CascadeType.ALL)
	private Classes classes;

	// getters and setters
	public long getId() {
		return id;
	}

	public void setId(long id) {
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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
			return phonenumber.getHome() + ", " + phonenumber.getWork();
	}

	public void setPhonenumber(PhoneNumber phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getClasses() {
		if (classes == null) {
			return "";
		} else
			return classes.getName().toUpperCase();
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}

}
