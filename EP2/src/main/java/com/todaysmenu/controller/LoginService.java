package com.todaysmenu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.todaysmenu.db.MemberDAO;
import com.todaysmenu.model.MemberVO;

public class LoginService implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		// 요청 데이터를 MemberVO 하나로 묶어주기
		MemberVO vo = new MemberVO();
		vo.setUser_id(user_id);
		vo.setUser_pw(user_pw);
		// DAO생성하기
		MemberDAO dao = new MemberDAO();
		// dao.login 기능 사용하기
		MemberVO result = dao.login(vo);
		if (result != null) {
			// 로그인이 성공했다면
			// 6-1 세션 영역을 꺼내와서
			HttpSession session = request.getSession();
			// 6-2 세션영역에 로그인정보를 담아주기
			session.setAttribute("member", result);
			// 7 main.jsp로 redirect 방식 이동
			response.getWriter().print(true);
		} else {
			System.out.println("로그인 실패");
			response.getWriter().print(false);
		}
		return null;
	}

}
