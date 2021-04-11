package com.wolken.wolkenapp.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wolken.wolkenapp.dao.LoginDAO;
import com.wolken.wolkenapp.dto.UpdateDTO;
import com.wolken.wolkenapp.entity.CakeEntity;

@Service
public class UpdateProfileServiceImpl implements UpdateProfileService {
	
	Logger logger = Logger.getLogger("UpdateProfileServiceImpl");
	
	@Autowired
	LoginDAO loginDAO;


	public CakeEntity ValidateAndGet(String emailId) {
		logger.info("validate and get");
		try {
		if(emailId != null) {
			CakeEntity cakeEntity =loginDAO.get(emailId);
			return cakeEntity;
		}
		else {
		logger.info("email is null");
		}

	}catch(Exception e){
		e.getMessage();
		}
		return null;
	}


	public String ValidateAndUpdate(UpdateDTO dto) {
		logger.info("validate and update");
		try {
		int result =loginDAO.update(dto);
		if(result>=1) {
			return "'details updated";
		}
		else {
			return "update failed";
		}
	}catch(Exception e) {
		e.getMessage();
	}
		return null;

	}
}
