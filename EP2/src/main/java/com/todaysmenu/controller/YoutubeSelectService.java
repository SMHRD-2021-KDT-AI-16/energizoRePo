package com.todaysmenu.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.todaysmenu.db.YoutubeDAO;
import com.todaysmenu.model.YoutubeVO;

public class YoutubeSelectService implements command {
	 int PAGE_SIZE = 20;
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int page = 1;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		String youtube_name = request.getParameter("youtube_name");
		YoutubeDAO dao = new YoutubeDAO();
		HttpSession session = request.getSession();
		session.setAttribute("youtube_name",youtube_name);
		List<YoutubeVO> youtube= new ArrayList<YoutubeVO>();
		if (youtube_name == null) {
			youtube = dao.showyoutubeAll();

		} else {
			youtube = dao.showyoutube(youtube_name);
		}
		

		int startIdx = (page - 1) * PAGE_SIZE;
		int endIdx = Math.min(startIdx + PAGE_SIZE, youtube.size());
		List<YoutubeVO> currentPageList = youtube.subList(startIdx, endIdx);
		session.setAttribute("currentPageList", currentPageList);
		session.setAttribute("youtube", youtube);
		
		return "Goyoutube.do";
	}

}
