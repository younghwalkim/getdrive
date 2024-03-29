package com.project.getdrive.search.model.service;

import java.util.ArrayList;

import com.project.getdrive.common.CommonSch;
import com.project.getdrive.search.model.vo.Search;

public interface SearchService {

	// 검색결과 갯수
	int selectSearchCount(String keyword);

	// 검색결과
	ArrayList<Search> selectSearch(CommonSch commonSch);

	// 임시 - 팀이동
	ArrayList<Search> teamSelect();

}
