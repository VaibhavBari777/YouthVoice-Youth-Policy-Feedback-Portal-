package com.r3sys.model;

import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="youthRegistraction")
@Component
public class YouthRegistraction {
	@Id
	private String youthNumber;
	private String youthName;
	private String youthAge;
	private String youthEmail;
	private String youthPassword;
	
	public String getYouthNumber() {
		return youthNumber;
	}
	public void setYouthNumber(String youthNumber) {
		this.youthNumber = youthNumber;
	}
	public String getYouthName() {
		return youthName;
	}
	public void setYouthName(String youthName) {
		this.youthName = youthName;
	}
	public String getYouthAge() {
		return youthAge;
	}
	public void setYouthAge(String youthAge) {
		this.youthAge = youthAge;
	}
	public String getYouthEmail() {
		return youthEmail;
	}
	public void setYouthEmail(String youthEmail) {
		this.youthEmail = youthEmail;
	}
	public String getYouthPassword() {
		return youthPassword;
	}
	public void setYouthPassword(String youthPassword) {
		this.youthPassword = youthPassword;
	}
	
	@Override
	public String toString() {
		return "YouthRegistraction [youthNumber=" + youthNumber + ", youthName=" + youthName + ", youthAge=" + youthAge
				+ ", youthEmail=" + youthEmail + ", youthPassword=" + youthPassword + "]";
	}
	public YouthRegistraction(String youthNumber, String youthName, String youthAge, String youthEmail,
			String youthPassword) {
		super();
		this.youthNumber = youthNumber;
		this.youthName = youthName;
		this.youthAge = youthAge;
		this.youthEmail = youthEmail;
		this.youthPassword = youthPassword;
	}
	public YouthRegistraction() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
