package com.assignment.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.assignment.bean.Feedback;
import com.assignment.dao.UserDao;
import com.assignment.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserDao userDao;

	@Override
	public Integer save(Feedback feedback) {
		// TODO Auto-generated method stub
		Integer id = userDao.saveUserFeedback(feedback);
		return id;
		
	}

	@Override
	public List<Feedback> showFeedback() {
		// TODO Auto-generated method stub
		List<Feedback> list = userDao.showAllFeedback();
		return list;
	}

}
