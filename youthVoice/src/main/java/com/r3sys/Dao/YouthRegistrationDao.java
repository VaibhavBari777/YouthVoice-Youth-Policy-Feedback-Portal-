package com.r3sys.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.r3sys.model.YouthRegistraction;
@Component
@Repository
public class YouthRegistrationDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	@Transactional
	public void addYouth(YouthRegistraction obj){
		hibernateTemplate.save(obj);
		
	}
	@Transactional
	public void updateYouth(YouthRegistraction obj){
		hibernateTemplate.update(obj);
	}
	@Transactional
	public void deleteYouth(YouthRegistraction obj){
		hibernateTemplate.delete(obj);
	}
	
	public YouthRegistraction getIdYouth(String number){
		YouthRegistraction obj = hibernateTemplate.get(YouthRegistraction.class ,number);
		return obj;
	}
	public List<YouthRegistraction> getAll(){
		List<YouthRegistraction> obj = hibernateTemplate.loadAll(YouthRegistraction.class);
		return obj;
	}
	public YouthRegistraction getIdYouth(Long number){
	    YouthRegistraction obj = hibernateTemplate.get(YouthRegistraction.class, number);
	    return obj;
	}
	public YouthRegistraction getNumber(String contact) {
		YouthRegistraction c = hibernateTemplate.get(YouthRegistraction.class, contact);
		return c;
	}
}
	
	




