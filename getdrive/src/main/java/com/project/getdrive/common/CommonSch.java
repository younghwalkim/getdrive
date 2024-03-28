package com.project.getdrive.common;

import java.sql.Date;

public class CommonSch {
	
	// 객체
	private String keyword; // 키워드
	private int startRow;	// 시작행
	private int endRow;		// 끝행
	private int age;	// 나이검색
	private Date begin;	// 가입날짜 검색
	private Date end;	// 가입날짜 검색
	
	// 생성자
	public CommonSch() {
		super();	
	}

	// getter & setter
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getBegin() {
		return begin;
	}

	public void setBegin(Date begin) {
		this.begin = begin;
	}

	public Date getEnd() {
		return end;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	// toString
	@Override
	public String toString() {
		return "Search [keyword=" + keyword + ", startRow=" + startRow + ", endRow=" + endRow + ", age=" + age
				+ ", begin=" + begin + ", end=" + end + "]";
	}
	
	
	
	
	
	
}
