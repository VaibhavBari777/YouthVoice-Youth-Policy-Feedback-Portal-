package com.r3sys.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.r3sys.model.OfficerRegistration;

@Component
@Repository
public class OfficerRegistrationDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	//Add insert values
	
	@Transactional
	public void addOfficer(OfficerRegistration obj){
		hibernateTemplate.save(obj);
	}
	// Update values
	@Transactional
	public void updateOfficer(OfficerRegistration obj){
		hibernateTemplate.update(obj);
	}
	// delete specific values
	@Transactional
	public void deleteOfficer(OfficerRegistration obj){
		hibernateTemplate.delete(obj);
	}
	
	//get one value by is
	
	public OfficerRegistration getIdYouth(int number){
		OfficerRegistration obj = hibernateTemplate.get(OfficerRegistration.class ,number);
		return obj;
	}
	//get All values
	public List<OfficerRegistration> getAll(){
		List<OfficerRegistration> obj = hibernateTemplate.loadAll(OfficerRegistration.class);
		return obj;
	}
	
	public OfficerRegistration getNumber(String contact) {
		OfficerRegistration c = hibernateTemplate.get(OfficerRegistration.class, contact);
		return c;
	}

}
