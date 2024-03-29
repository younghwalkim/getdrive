package com.project.getdrive.search.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.getdrive.common.CommonSch;
import com.project.getdrive.search.model.service.SearchService;
import com.project.getdrive.search.model.vo.Search;

@Repository("searchDao")
public class SearchDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int selectSearchCount(String keyword) {
		return sqlSessionTemplate.selectOne("searchMapper.selectSearchCount", keyword);
	}

	public ArrayList<Search> selectSearch(CommonSch commonSch) {
		List<Search> list = sqlSessionTemplate.selectList("searchMapper.selectSearch", commonSch);
		return (ArrayList<Search>)list;
	}

	public ArrayList<Search> teamSelect() {
		List<Search> list = sqlSessionTemplate.selectList("searchMapper.teamSelect");
		return (ArrayList<Search>)list;
	}

}
