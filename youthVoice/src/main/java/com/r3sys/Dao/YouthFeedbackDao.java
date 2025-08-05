package com.r3sys.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.r3sys.model.YouthFeedback;
@Component
@Repository

public class YouthFeedbackDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	
	@Transactional
	public void addFeedback( YouthFeedback obj){
		hibernateTemplate.save(obj);
		
	}
	@Transactional
	public void updateFeedback(YouthFeedback obj){
		hibernateTemplate.update(obj);
	}
	@Transactional
	public void deleteFeedback(YouthFeedback obj){
		hibernateTemplate.delete(obj);
	}
	
	public YouthFeedback getIdFeedback(String number){
		YouthFeedback obj = hibernateTemplate.get(YouthFeedback.class ,number);
		return obj;
	}
	public List<YouthFeedback> getAll(){
		List<YouthFeedback> obj = hibernateTemplate.loadAll(YouthFeedback.class);
		return obj;
	}

}
