package com.r3sys.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Entity
@Table(name="feedback")
@Component
public class YouthFeedback {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int Id;
	private String Number;
	private int policyId;
	private String feedback;
	private String date;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getNumber() {
		return Number;
	}
	public void setNumber(String number) {
		Number = number;
	}
	public int getPolicyId() {
		return policyId;
	}
	public void setPolicyId(int policyId) {
		this.policyId = policyId;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "youthFeedback [Id=" + Id + ", Number=" + Number + ", policyId=" + policyId + ", feedback=" + feedback
				+ ", date=" + date + "]";
	}
	public YouthFeedback(int id, String number, int policyId, String feedback, String date) {
		super();
		Id = id;
		Number = number;
		this.policyId = policyId;
		this.feedback = feedback;
		this.date = date;
	}
	public YouthFeedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
