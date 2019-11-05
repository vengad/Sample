package com.viji.JobPortal.model;

import java.util.Date;

public class education_detail {
	
	private String user_account_id;
	
	private String degree_name;
	private String major;
	private String university;
	private Date start_date;
	private Date completion_date;
	private Double cgpa;
	//private String resume;
	public String getUser_account_id() {
		return user_account_id;
	}
	public void setUser_account_id(String user_account_id) {
		this.user_account_id = user_account_id;
	}
	public String getDegree_name() {
		return degree_name;
	}
	public void setDegree_name(String degree_name) {
		this.degree_name = degree_name;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getCompletion_date() {
		return completion_date;
	}
	public void setCompletion_date(Date completion_date) {
		this.completion_date = completion_date;
	}
	public Double getCgpa() {
		return cgpa;
	}
	public void setCgpa(Double cgpa) {
		this.cgpa = cgpa;
	}
	

}
