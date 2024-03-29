package com.project.getdrive.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value="contract.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String moveContractPage() {
		return "member/contract";
	}
	
	@RequestMapping(value="register.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String moveRegisterPage() {
		return "member/register";
	}
	
	@RequestMapping(value="registerComplete.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String moveMainPage() {
		return "common/main";
	}
	

	
}
