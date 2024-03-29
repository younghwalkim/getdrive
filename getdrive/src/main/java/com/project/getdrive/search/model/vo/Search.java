package com.project.getdrive.search.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Search implements Serializable{

	private static final long serialVersionUID = -302535403447027494L;
	
	private int s_no;
	private String s_menu;
	private String s_title;
	private String s_content;
	private java.sql.Date s_date;
	private int s_cruid;
	private int s_id;
	private int s_ctid;
	private int s_tid;

	public Search() {
		super();
	}
	
	public Search(int s_no, String s_menu, String s_title, String s_content, Date s_date, int s_cruid, int s_id,
			int s_ctid, int s_tid) {
		super();
		this.s_no = s_no;
		this.s_menu = s_menu;
		this.s_title = s_title;
		this.s_content = s_content;
		this.s_date = s_date;
		this.s_cruid = s_cruid;
		this.s_id = s_id;
		this.s_ctid = s_ctid;
		this.s_tid = s_tid;
	}

	public int getS_no() {
		return s_no;
	}

	public void setS_no(int s_no) {
		this.s_no = s_no;
	}

	public String getS_menu() {
		return s_menu;
	}

	public void setS_menu(String s_menu) {
		this.s_menu = s_menu;
	}

	public String getS_title() {
		return s_title;
	}

	public void setS_title(String s_title) {
		this.s_title = s_title;
	}

	public String getS_content() {
		return s_content;
	}

	public void setS_content(String s_content) {
		this.s_content = s_content;
	}

	public java.sql.Date getS_date() {
		return s_date;
	}

	public void setS_date(java.sql.Date s_date) {
		this.s_date = s_date;
	}

	public int getS_cruid() {
		return s_cruid;
	}

	public void setS_cruid(int s_cruid) {
		this.s_cruid = s_cruid;
	}

	public int getS_id() {
		return s_id;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}

	public int getS_ctid() {
		return s_ctid;
	}

	public void setS_ctid(int s_ctid) {
		this.s_ctid = s_ctid;
	}

	public int getS_tid() {
		return s_tid;
	}

	public void setS_tid(int s_tid) {
		this.s_tid = s_tid;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Search [s_no=" + s_no + ", s_menu=" + s_menu + ", s_title=" + s_title + ", s_content=" + s_content
				+ ", s_date=" + s_date + ", s_cruid=" + s_cruid + ", s_id=" + s_id + ", s_ctid=" + s_ctid + ", s_tid="
				+ s_tid + "]";
	}
}
