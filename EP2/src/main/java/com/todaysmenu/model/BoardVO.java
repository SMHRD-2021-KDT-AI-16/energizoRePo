package com.todaysmenu.model;

public class BoardVO {
	
	private String id;
	private String title;
	private String contents;
	private String dates;
	
	public BoardVO(String id, String title, String contents, String dates) {
		this.id = id;
		this.title = title;
		this.contents = contents;
		this.dates = dates;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getDates() {
		return dates;
	}

	public void setDates(String dates) {
		this.dates = dates;
	}
	
	
	
}
