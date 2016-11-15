package com.qeepchat.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;


@Entity
@Table(name="C_Event")
public class Event {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int c_id;
	private String c_name;
	private String c_venue;
	private String c_desc;
	private Date c_dateTime;
	
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_venue() {
		return c_venue;
	}
	public void setC_venue(String c_venue) {
		this.c_venue = c_venue;
	}
	public String getC_desc() {
		return c_desc;
	}
	public void setC_desc(String c_desc) {
		this.c_desc = c_desc;
	}
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd HH:mm a z")
	public Date getC_dateTime() {
		return c_dateTime;
	}
	public void setC_dateTime(Date c_dateTime) {
		
		this.c_dateTime = c_dateTime;
	}
	
	public Event (){
		Date d =new Date();
		c_dateTime=d;
		
	}
	
	

}
