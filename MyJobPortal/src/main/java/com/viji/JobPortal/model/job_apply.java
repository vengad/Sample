package com.viji.JobPortal.model;

import java.sql.Date;

public class job_apply {
	
	private int job_post_id;

	private Date apply_date;
	private int application_id;
	public int getJob_post_id() {
		return job_post_id;
	}
	public void setJob_post_id(int job_post_id) {
		this.job_post_id = job_post_id;
	}
	public Date getApply_date() {
		return apply_date;
	}
	public void setApply_date(Date apply_date) {
		this.apply_date = apply_date;
	}
	public int getApplication_id() {
		return application_id;
	}
	public void setApplication_id(int application_id) {
		this.application_id = application_id;
	}
	

}
