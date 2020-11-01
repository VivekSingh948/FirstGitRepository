package com.assignment.daoImpl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.assignment.bean.Feedback;
import com.assignment.dao.UserDao;


@Repository
@Transactional
public class UserDaoImpl implements UserDao{
	@Autowired
	EntityManager em;

	@Override
	public Integer saveUserFeedback(Feedback feedback) {
		// TODO Auto-generated method stub
		em.persist(feedback);
		Integer id = feedback.getFeedback_id();
		return id;
	}

	@Override
	public List<Feedback> showAllFeedback() {
		// TODO Auto-generated method stub
		Query query=em.createNativeQuery("select * from feedback",Feedback.class);
		
		List<Feedback> list = query.getResultList();
		return list;
		
		
	}

}
