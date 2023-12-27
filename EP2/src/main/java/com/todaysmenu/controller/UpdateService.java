package com.todaysmenu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.todaysmenu.db.MemberDAO;
import com.todaysmenu.model.MemberVO;

public class UpdateService implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MemberVO sessionVO=(MemberVO)session.getAttribute("member");
		MemberVO vo= new MemberVO();
		vo.setUser_id(sessionVO.getUser_id());
		vo.setUser_pw(request.getParameter("pw"));
		vo.setUser_name(request.getParameter("tel"));
		vo.setUser_birthdate(request.getParameter("address"));
		MemberDAO dao = new MemberDAO();
		int result=dao.update(vo);
		
		return "redirect:/Gomain.do";
	}

}
