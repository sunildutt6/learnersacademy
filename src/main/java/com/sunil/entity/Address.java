package com.sunil.entity;

import jakarta.persistence.Embeddable;

@Embeddable
public class Address {

	private String city;
	private String State;
	private int pin;

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public int getPin() {
		return pin;
	}

	public void setPin(int pin) {
		this.pin = pin;
	}
	
	

}
