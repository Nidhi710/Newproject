package com.qeepchat.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="C_Friend")
public class Friend extends BaseDomain {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int f_Id;
	private int id;
	private int friendId;
	private String status;
	private char isOnline;
	public int getF_Id() {
		return f_Id;
	}
	public void setF_Id(int f_Id) {
		this.f_Id = f_Id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getFriendId() {
		return friendId;
	}
	public void setFriendId(int friendId) {
		this.friendId = friendId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public char getIsOnline() {
		return isOnline;
	}
	public void setIsOnline(char isOnline) {
		this.isOnline = isOnline;
	}

	
}
