package com.project.getdrive.search.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.getdrive.common.CommonSch;
import com.project.getdrive.common.Paging;
import com.project.getdrive.search.model.service.SearchService;
import com.project.getdrive.search.model.vo.Search;

@Controller
public class SearchContoller {

	private static final Logger logger = LoggerFactory.getLogger(SearchContoller.class);	
	
	@Autowired
	private SearchService searchService;
	
	// searchList.do
	@RequestMapping(value="searchList.do", method= {RequestMethod.POST, RequestMethod.GET}) 
	public ModelAndView boradSearchTitleMethod(
		@RequestParam(name="page", required=false) String page,
		@RequestParam("keyword") String keyword,		
		@RequestParam(name = "limit", required=false) String slimit,		
		ModelAndView mv ) {
		
		logger.info("#### searchList.do ");
		
		
		// (페이징) 출력할 페이지 지정
		int currentPage = 1;
		if(page != null) {
			currentPage = Integer.parseInt(page);
		}

		// 2. 한 페이지당 출력할 목록 갯수 지정
		int limit = 10;
		if(slimit != null) {
			limit = Integer.parseInt( slimit );
		}	
		
		// (페이징) 총 페이지 수 계산을 위한 전체 목록 갯수 조회
		int listCount = searchService.selectSearchCount(keyword);
		
		// (페이징) 메소드 호출 및 페이징 계산 
		Paging paging = new Paging(listCount, currentPage, limit, "searchList.do");
		paging.calculate();		
 
		// 한 페이지에 출력할 검색 결과 적용된 목록 조회
		CommonSch commonSch = new CommonSch();		
		commonSch.setStartRow(paging.getStartRow());
		commonSch.setEndRow(paging.getEndRow());		
		commonSch.setKeyword(keyword);
				
		ArrayList<Search> list = searchService.selectSearch(commonSch);

		mv.addObject("keyword", keyword);			
		mv.addObject("listCount", listCount);
		
		if(list != null && list.size() > 0) {
			// 목록을 모델에 추가
			mv.addObject("list", list);	
			mv.addObject("paging", paging);
			mv.addObject("currentPage", currentPage);
			mv.addObject("limit", limit);
			mv.setViewName("search/searchList");
		} else {
			mv.addObject("message", "검색결과가 존재하지 않습니다.");
			mv.setViewName("search/searchList");
		}
		
		return mv;
	}
}
