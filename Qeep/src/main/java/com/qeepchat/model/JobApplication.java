package com.qeepchat.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class JobApplication {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int job_id;
private int c_id;
private int id;
private String status;
private String remarks;
public int getJob_id() {
	return job_id;
}
public void setJob_id(int job_id) {
	this.job_id = job_id;
}
public int getC_id() {
	return c_id;
}
public void setC_id(int c_id) {
	this.c_id = c_id;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getRemarks() {
	return remarks;
}
public void setRemarks(String remarks) {
	this.remarks = remarks;
}

}
