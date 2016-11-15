package com.qeepchat.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Job {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
 private int c_id;
private String c_title;
private String c_desc;
private Date c_dateTime;
private String qualification;
private char status;

public int getC_id() {
	return c_id;
}
public void setC_id(int c_id) {
	this.c_id = c_id;
}
public String getC_title() {
	return c_title;
}
public void setC_title(String c_title) {
	this.c_title = c_title;
}
public String getC_desc() {
	return c_desc;
}
public void setC_desc(String c_desc) {
	this.c_desc = c_desc;
}
public Date getC_dateTime() {
	return c_dateTime;
}
public void setC_dateTime(Date c_dateTime) {
	
	this.c_dateTime = c_dateTime;
}
public String getQualification() {
	return qualification;
}
public void setQualification(String qualification) {
	this.qualification = qualification;
}
public char getStatus() {
	return status;
}
public void setStatus(Character status) {
	if (status==null){
		status=new Character ('V');
	}
	this.status = status;
}
public Job(){
	Date d= new Date();
	c_dateTime=d;
}

}
