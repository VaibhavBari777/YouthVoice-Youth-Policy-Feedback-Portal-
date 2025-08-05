package com.r3sys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.r3sys.Dao.YouthRegistrationDao;
import com.r3sys.Dao.OfficerRegistrationDao;
import com.r3sys.Dao.PolicyDao;
import com.r3sys.Dao.YouthFeedbackDao;
//
//import com.r3sys.Dao.CustomerDao;
//import com.r3sys.model.Cutomer_get_detail;
import com.r3sys.model.*;
@Controller
public class HomeController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
//	Cutomer_get_detail customer = (Cutomer_get_detail) context.getBean("cutomer_get_detail");
//	CustomerDao customerDao = (CustomerDao) context.getBean("customerDao");
//	
	YouthRegistraction youthRegistration1 = context.getBean(YouthRegistraction.class);
	YouthRegistrationDao youthRegistrationDao1 =  context.getBean(YouthRegistrationDao.class);
	
	OfficerRegistration officerRegistration = context.getBean(OfficerRegistration.class);
	OfficerRegistrationDao officerRegistrationDao = context.getBean(OfficerRegistrationDao.class);
	
	Policy policy = context.getBean(Policy.class);
	PolicyDao policyDao = context.getBean(PolicyDao.class);
	
	YouthFeedback youthFeedback = context.getBean(YouthFeedback.class);
	YouthFeedbackDao youthFeedbackDao =  context.getBean(YouthFeedbackDao.class);
	
	@RequestMapping("/")
	public String home(){
		return "index";
	}
	


	
//	@RequestMapping("/deposit")
//	public String deposit() {
//		return "deposit";
//	}
//	
//	@RequestMapping("/withdraw")
//	public String withdraw() {
//		return "withdraw";
//	}
//	
//	
//	
//	@RequestMapping("/accopen")
//	public String accopen() {
//		return "accopen";
//	}
//	
//	
	@RequestMapping(path="/adminLogin", method = RequestMethod.POST)
	public String AdminLogin(HttpServletRequest request) {
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		
		if(email.equals("admin@gmail.com") && pass.equals("admin")) {
			return "adminDashboard";
		} else {
			return "index";
		}
	
	}
	@RequestMapping(path="/govLogin", method = RequestMethod.POST)
	public String govermentLogin(HttpServletRequest request) {
		  String contact = request.getParameter("number");
		    String pass = request.getParameter("password");
		
		    OfficerRegistration c = officerRegistrationDao.getNumber(contact);

		    if (c != null && c.getPassword().equals(pass)) {
		        return "govermentDashboard";
		    } else {
		        return "index";
		    }

	
	}
//	@RequestMapping(path="/youthLogin", method = RequestMethod.POST)
//	public String youthLogin(HttpServletRequest request) {
//		
//		String email = request.getParameter("email");
//		String pass = request.getParameter("password");
//		
//		if(email.equals("admin@mail.com") && pass.equals("admin")) {
//			return "youthDashboard";
//		} else {
//			return "index";
//		}
//		
	
	
	
	
	
	
	
	
	//IMP
//	@RequestMapping(path="/youthLogin", method = RequestMethod.POST)
//	public String youthLogin(HttpServletRequest request) {
//	    String contact = request.getParameter("number");
//	    String pass = request.getParameter("password");
//	    
//	    YouthRegistraction c = youthRegistrationDao1.getNumber(contact);
//
//	    if (c != null && c.getYouthPassword().equals(pass)) {
//	        return "youthDashboard";
//	    } else {
//	        return "index";
//	    }
//	}
	
	@RequestMapping(path="/youthLogin", method = RequestMethod.POST)
	public String youthLogin(HttpServletRequest request) {
	    String contact = request.getParameter("number");
	    String pass = request.getParameter("password");

	    YouthRegistraction c = youthRegistrationDao1.getNumber(contact);

	    if (c != null && c.getYouthPassword().equals(pass)) {
	        // Store number in session
	        request.getSession().setAttribute("number", contact);

	        return "youthDashboard";
	    } else {
	        return "index";
	    }
	}

	
	
	
	
	
	@RequestMapping(path="/youthRegistration")
	public String youthRegistration(HttpServletRequest request) {
		return "youthRegistration";
	}
	
	@RequestMapping(path="/officerRegistration")
	public String officerRegistration(HttpServletRequest request) {
		return "officerRegistration";
	}

	
	@RequestMapping("/index")
	public String login() {
		return "index";
	}

	
//	@RequestMapping(path="/NewAccount", method = RequestMethod.POST)
//	public String NewAccount(HttpServletRequest request) {
//		customer.setCusId(Integer.parseInt(request.getParameter("ano")));
//		customer.setName(request.getParameter("aname"));
//		customer.setContact(request.getParameter("amob"));
//		customer.setBalance(Integer.parseInt(request.getParameter("abal")));
//		
//		int i = customerDao.addCustomer(customer);
//		if(i>0) {
//			return "redirect:/show";
//		} else {
//			return "accopen";
//		}
//	}
//	
	@RequestMapping (path= "/youthRegistration" , method= RequestMethod.POST)
	public String AddYouth(HttpServletRequest request){
		youthRegistration1.setYouthNumber(request.getParameter("number"));
		youthRegistration1.setYouthName(request.getParameter("name"));
		youthRegistration1.setYouthAge(request.getParameter("age"));
		youthRegistration1.setYouthEmail(request.getParameter("email"));
		youthRegistration1.setYouthPassword(request.getParameter("password"));
		
		youthRegistrationDao1.addYouth(youthRegistration1);
		return "redirect:/index";
	
	}	
	

	
	@RequestMapping("/youthView")
	public String youthView(Model m){
		List<YouthRegistraction> obj = youthRegistrationDao1.getAll();
		m.addAttribute("youthView", obj);
		return "youthView";
	}
	
	
	@RequestMapping (path= "/officerRegistration" , method= RequestMethod.POST)
	public String AddOfficer(HttpServletRequest request){
		officerRegistration.setNumber(request.getParameter("number"));
		officerRegistration.setName(request.getParameter("name"));
		officerRegistration.setDepartment(request.getParameter("department"));
		officerRegistration.setEmail(request.getParameter("email"));
		officerRegistration.setPassword(request.getParameter("password"));
		
		officerRegistrationDao.addOfficer(officerRegistration);
		return "officerRegistration";
	
	}	
	
	@RequestMapping("/officerView")
	public String officerView(Model m){
		List<OfficerRegistration> obj = officerRegistrationDao.getAll();
		m.addAttribute("officerView", obj);
		return "officerView";
	}
	@RequestMapping(path ="deleteOfficer", method= RequestMethod.GET )
	public String deleteOfficer(HttpServletRequest request){
		
		int cid = Integer.parseInt(request.getParameter("cid"));
	OfficerRegistration obj=	officerRegistrationDao.getIdYouth(cid);
		officerRegistrationDao.deleteOfficer(obj);
		return "redirect:/officerView";
	}
	
	@RequestMapping("/addPolicy")
	public String AddPolicy(){
		return "addPolicy";
	}
	
	
	
	@RequestMapping (path= "/addPolicy" , method= RequestMethod.POST)
	public String AddPolicy(HttpServletRequest request){
		policy.getId();
		policy.setTitle(request.getParameter("title"));
		policy.setDescription(request.getParameter("description"));
		policy.setDate(request.getParameter("publishDate"));

		policyDao.addPolicy(policy);
		return "addPolicy";
	
	}	
	
	@RequestMapping("/ViewPolicy")
	public String ViewPolicy(Model m){
		List<Policy> policy = policyDao.getAll();
		m.addAttribute("policy", policy);
		return "ViewPolicy";
	}
	
	
	@RequestMapping("/ViewPolicyYouth")
	public String ViewPolicyYouth(Model m){
		List<Policy> policy = policyDao.getAll();
		m.addAttribute("policy", policy);
		return "ViewPolicyYouth";
	}
	
	@RequestMapping("/youthFeedback")
	public String youthFeedback(){
		return "youthFeedback";
	}
	
	
	@RequestMapping (path= "/youthFeedback" , method= RequestMethod.POST)
	public String AddFeedback(HttpServletRequest request){
		
		youthFeedback.setDate(request.getParameter("date"));
		youthFeedback.setFeedback(request.getParameter("feedback"));
		youthFeedback.setPolicyId(Integer.parseInt(request.getParameter("pid")));
		 String contact = (String) request.getSession().getAttribute("number");
		 
		    if (contact != null) {
		        youthFeedback.setNumber(contact);
		    }
		    youthFeedbackDao.addFeedback(youthFeedback);
	
		   return "youthFeedback";
	
	}	
	
	@RequestMapping("/viewFeedback")
	public String youthFeedback(Model m){
		List<YouthFeedback> obj = youthFeedbackDao.getAll();
		m.addAttribute("viewFeedback", obj);
		return "viewFeedback";
	}
	

	
	
//	@RequestMapping("/officerView")
//	public String officerView(Model m){
//		List<OfficerRegistration> obj = officerRegistrationDao.getAll();
//		m.addAttribute("officerView", obj);
//		return "officerView";
//	}
//	
	
	
//	
//
//	@RequestMapping(path="/DepositMoney", method = RequestMethod.POST)
//	public String DepositMoney(HttpServletRequest request) {
//		int id = Integer.parseInt(request.getParameter("ano"));
//		int amt = Integer.parseInt(request.getParameter("amt"));
//		
//		if(amt>0) {
//		customer = customerDao.deposite(id);
//		amt += customer.getBalance();
//		customer.setBalance(amt);
//		customerDao.update(customer);
//		return "redirect:/show";
//		} else {
//			return "deposit";
//		}
//	}
//	
//	
//	@RequestMapping(path="/WithdrawMoney", method = RequestMethod.POST)
//	public String WithdrawMoney(HttpServletRequest request) {
//		int id = Integer.parseInt(request.getParameter("ano"));
//		int amt = Integer.parseInt(request.getParameter("amt"));
//		
//		customer = customerDao.deposite(id);
//		if(amt <= customer.getBalance()) {
//			int updatedBalance = customer.getBalance() - amt;
//			customer.setBalance(updatedBalance);
//			customerDao.update(customer);
//			return "redirect:/show";
//		} else {
//			return "withdraw";
//		}
//		
//	}
//	
	
}
