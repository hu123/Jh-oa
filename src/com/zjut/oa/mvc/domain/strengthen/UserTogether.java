package com.zjut.oa.mvc.domain.strengthen;

import com.zjut.oa.mvc.domain.Department;
import com.zjut.oa.mvc.domain.User;

public class UserTogether {

	private long id;
	private User user;
	private Department department;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	@Override
	public String toString() {
		return "UserTogether [id=" + id + ", user=" + user + ", department="
				+ department + "]";
	}
	
	
}