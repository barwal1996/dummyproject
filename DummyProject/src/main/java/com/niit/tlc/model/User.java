package com.niit.tlc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.sun.istack.NotNull;

@Entity
public class User {

	@Id
	private String email;
	
	@NotNull
	private String firstName;
	
	@NotNull
	private String lastName;
	
	@NotNull
	private Long phone;
	
	@NotNull
	private String password;
	
	@Temporal(TemporalType.DATE)
	@NotNull
	private Date registeredDate;
	
	@Temporal(TemporalType.DATE)
	@NotNull
	private Date loginDate;
	

	

	public User(String email, String firstName, String lastName, Long phone, String password) {
		this.email = email;
		this.firstName = firstName;
		this.lastName = lastName;
		this.phone = phone;
		this.password = password;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getFirstName() {
		return firstName;
	}




	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}




	public String getLastName() {
		return lastName;
	}




	public void setLastName(String lastName) {
		this.lastName = lastName;
	}




	public Long getPhone() {
		return phone;
	}




	public void setPhone(Long phone) {
		this.phone = phone;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public Date getRegisteredDate() {
		return registeredDate;
	}




	public void setRegisteredDate(Date registeredDate) {
		this.registeredDate = registeredDate;
	}




	public Date getLoginDate() {
		return loginDate;
	}




	public void setLoginDate(Date loginDate) {
		this.loginDate = loginDate;
	}




	public User() {
		super();
	}




	@Override
	public String toString() {
		return "User [email=" + email + ", firstName=" + firstName + ", lastName=" + lastName + ", phone=" + phone
				+ ", password=" + password + ", registeredDate=" + registeredDate + ", loginDate=" + loginDate + "]";
	}
	
	

}
