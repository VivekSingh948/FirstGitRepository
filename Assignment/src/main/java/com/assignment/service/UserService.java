package com.assignment.service;

import java.util.List;

import com.assignment.bean.Feedback;

public interface UserService {
	
	public Integer save(Feedback feedback);
	
	public List<Feedback> showFeedback();

}
