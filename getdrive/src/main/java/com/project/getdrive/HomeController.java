package com.project.getdrive;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// index.jsp 에서 main.do 호출
	@RequestMapping("main.do")
	public String forwardMainView() {
		return "common/main";
	}
	
	@RequestMapping("template.do")
	public String templateView(
		@RequestParam(name = "uno", required = false ) String usernum,
		@RequestParam(name = "e_mail", required = false) String e_mail,
		@RequestParam(name = "tno", required = false) int teamcode,			
		HttpSession session,		
		SessionStatus status) {
		
		logger.info("#### template.do ");
		
		if (usernum != null ) {
			// 세션에 담음
			session.setAttribute("loginMember", usernum);
			session.setAttribute("emailMember", e_mail );
			session.setAttribute("teamCode", teamcode );				
		}
	

		
		// 로그인 성공 요청 결과로 HttpStatus code 200 보냄
		status.setComplete(); 
		
		
		return "common/template";
	}	

}
