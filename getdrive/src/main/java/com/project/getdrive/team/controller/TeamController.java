package com.project.getdrive.team.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.getdrive.search.model.service.SearchService;
import com.project.getdrive.search.model.vo.Search;

@Controller
public class TeamController {
	
	@Autowired
	private SearchService searchService;	
	
	@RequestMapping("tmain.do")
	public String moveTeamMain() {
		return "team/teamMain";
	}
	
	@RequestMapping("tadmin.do")
	public String moveTeamAdmin() {
		return "team/teamAdmin";
	}
	
	@RequestMapping("tinfo.do")
	public String moveTeamInfo() {
		return "team/teamInfo";
	}
	
	@RequestMapping("tcreate.do")
	public String createTeam() {
		return "team/createTeam";
	}
	
	// 왼쪽 메뉴 팀이동 기능 - 객체변경할 것.
	@SuppressWarnings("unchecked")	
	@RequestMapping(value="teamSelect.do", method=RequestMethod.POST)
	@ResponseBody	
	public String teamSelect() throws UnsupportedEncodingException {
		ArrayList<Search> list = searchService.teamSelect();
		
		JSONArray jarr = new JSONArray();		
		
		for(Search search : list) {
			JSONObject job = new JSONObject();
			
			job.put("no", search.getS_no());
			
			//한글 데이터는 반드시 인코딩 처리함			
			job.put("title", URLEncoder.encode(search.getS_title(), "utf-8"));
			
			jarr.add(job);
		}		
		
		JSONObject sendJson = new JSONObject();
		sendJson.put("list", jarr);
		
		return sendJson.toJSONString();
	}	
}