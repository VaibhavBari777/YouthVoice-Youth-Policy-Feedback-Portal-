package com.r3sys.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Entity
@Table(name="Policy")
@Component
public class Policy {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String title;
	private String description ;
	private String date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Policy [id=" + id + ", title=" + title + ", description=" + description + ", date=" + date + "]";
	}
	public Policy(int id, String title, String description, String date) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.date = date;
	}
	public Policy() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
