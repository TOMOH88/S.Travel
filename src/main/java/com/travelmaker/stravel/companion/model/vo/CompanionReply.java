﻿package com.travelmaker.stravel.companion.model.vo;

import java.sql.Date;

public class CompanionReply implements java.io.Serializable {

	private static final long serialVersionUID = -2823748804812402266L;
	
	private int companion_reply_no;
	private int companion_no;
	private String companion_reply_writer;
	private String companion_reply_content;
	private Date companion_reply_date;
	
	public CompanionReply() {}

	public CompanionReply(int companion_reply_no, int companion_no, int companion_reply_ref, int companion_reply_lev,
			int companion_reply_seq, String companion_reply_writer, String companion_reply_content,
			Date companion_reply_date) {
		super();
		this.companion_reply_no = companion_reply_no;
		this.companion_no = companion_no;
		this.companion_reply_writer = companion_reply_writer;
		this.companion_reply_content = companion_reply_content;
		this.companion_reply_date = companion_reply_date;
	}

	public int getCompanion_reply_no() {
		return companion_reply_no;
	}

	public void setCompanion_reply_no(int companion_reply_no) {
		this.companion_reply_no = companion_reply_no;
	}

	public int getCompanion_no() {
		return companion_no;
	}

	public void setCompanion_no(int companion_no) {
		this.companion_no = companion_no;
	}

	public String getCompanion_reply_writer() {
		return companion_reply_writer;
	}

	public void setCompanion_reply_writer(String companion_reply_writer) {
		this.companion_reply_writer = companion_reply_writer;
	}

	public String getCompanion_reply_content() {
		return companion_reply_content;
	}

	public void setCompanion_reply_content(String companion_reply_content) {
		this.companion_reply_content = companion_reply_content;
	}

	public Date getCompanion_reply_date() {
		return companion_reply_date;
	}

	public void setCompanion_reply_date(Date companion_reply_date) {
		this.companion_reply_date = companion_reply_date;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "CompanionReply [companion_reply_no=" + companion_reply_no + ", companion_no=" + companion_no
				+ ", companion_reply_writer=" + companion_reply_writer + ", companion_reply_content="
				+ companion_reply_content + ", companion_reply_date=" + companion_reply_date + "]";
	}

	

	

}
