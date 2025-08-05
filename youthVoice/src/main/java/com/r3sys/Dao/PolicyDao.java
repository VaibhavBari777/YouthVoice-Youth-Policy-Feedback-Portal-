package com.r3sys.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.r3sys.model.Policy;
@Component
@Repository
public class PolicyDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	@Transactional
	public void addPolicy(Policy obj){
		hibernateTemplate.save(obj);
		
	}
	@Transactional
	public void updatePolicy(Policy obj){
		hibernateTemplate.update(obj);
	}
	@Transactional
	public void deletePolicy(Policy obj){
		hibernateTemplate.delete(obj);
	}
	
	public Policy getIdPolicy(String number){
		Policy obj = hibernateTemplate.get(Policy.class ,number);
		return obj;
	}
	public List<Policy> getAll(){
		List<Policy> obj = hibernateTemplate.loadAll(Policy.class);
		return obj;
	}

}
