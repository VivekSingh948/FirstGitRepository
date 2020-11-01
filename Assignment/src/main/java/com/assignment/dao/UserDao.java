package com.assignment.dao;

import java.util.List;

import com.assignment.bean.Feedback;

public interface UserDao {
	
	public Integer saveUserFeedback(Feedback feedback);
	
	public List<Feedback> showAllFeedback();


}
