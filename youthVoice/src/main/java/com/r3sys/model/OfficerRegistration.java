package com.r3sys.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="OfficerRegistration")
@Component
public class OfficerRegistration {
	@Id
	private String number ;
	private String name;
	private String department;
	private String email;
	private String password;
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "officerRegistration [number=" + number + ", name=" + name + ", department=" + department + ", email="
				+ email + ", password=" + password + "]";
	}
	public OfficerRegistration(String number, String name, String department, String email, String password) {
		super();
		this.number = number;
		this.name = name;
		this.department = department;
		this.email = email;
		this.password = password;
	}
	public OfficerRegistration() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
