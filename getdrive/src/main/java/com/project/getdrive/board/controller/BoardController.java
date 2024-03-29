package com.project.getdrive.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping("bmain.do")
	public String boardMain() {
		return "board/boardMain";
	}
	
	

}
