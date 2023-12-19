package com.todaysmenu.model;

public class YoutubeVO {
	
	private String youtuber_name;
	private String video_url;
	private String img_url;
	
	public YoutubeVO(String youtuber_name, String video_url, String img_url) {
		this.youtuber_name = youtuber_name;
		this.video_url = video_url;
		this.img_url = img_url;
	}

	public String getYoutuber_name() {
		return youtuber_name;
	}

	public void setYoutuber_name(String youtuber_name) {
		this.youtuber_name = youtuber_name;
	}

	public String getVideo_url() {
		return video_url;
	}

	public void setVideo_url(String video_url) {
		this.video_url = video_url;
	}

	public String getImg_url() {
		return img_url;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	
	
	
}
