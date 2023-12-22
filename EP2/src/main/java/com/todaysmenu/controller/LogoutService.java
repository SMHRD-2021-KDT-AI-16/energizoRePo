package com.todaysmenu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutService implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				// 1. 세션 꺼내오기
				HttpSession session= request.getSession();
				// 2. 세션영역 안에 있는 모든 데이터 무효화 시키기
				session.invalidate();
				// 3. main.jsp로 redirect방식 이동
				return "redirect:/Gomain.do";
				
				
	}

}
