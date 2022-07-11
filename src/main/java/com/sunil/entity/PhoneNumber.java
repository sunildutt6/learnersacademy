package com.sunil.entity;

import jakarta.persistence.Embeddable;

@Embeddable
public class PhoneNumber {

	private int work;

	private int home;

	public int getWork() {
		return work;
	}

	public void setWork(int work) {
		this.work = work;
	}

	public int getHome() {
		return home;
	}

	public void setHome(int home) {
		this.home = home;
	}

	
}
