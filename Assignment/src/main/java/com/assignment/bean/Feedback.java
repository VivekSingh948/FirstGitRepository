package com.assignment.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;


@Entity
@Table(name = "feedback")
public class Feedback {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int feedback_id;
	@Size(min=2,max=15,message="Enter atleast 3 character")
	private String name;
	
	@Email(message="Email required")
	@NotEmpty
	private String email;
	
	@Size(min=10,max=10,message="Enter valid mobile no")
	private String mobile;
	
	@Size(min=3,max=100,message="Feedback required")
	private String feedback;
	
	
	
	public int getFeedback_id() {
		return feedback_id;
	}
	public void setFeedback_id(int feedback_id) {
		this.feedback_id = feedback_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	
	

}
