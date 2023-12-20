package com.todaysmenu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todaysmenu.db.MemberDAO;
import com.todaysmenu.model.MemberVO;

public class JoinService implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. 요청받은 데이터 꺼내오기
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				int age =Integer.parseInt(request.getParameter("age"));
				String name = request.getParameter("name");
				String gender = request.getParameter("gender");
				// 2. MemberVO 클래스를 생성해서 요청받은 데이터를 하나로 묶어주기
				// 2-1) MemberVO vo라는 객체 생성
				MemberVO vo = new MemberVO();
				// 2-2) setter메소드 사용해서 데이터보관
				vo.setId(id);
				vo.setPw(pw);
				vo.setAge(age);
				vo.setName(name);
				vo.setGender(gender);
				// 3. DAO 생성하기
				MemberDAO dao = new MemberDAO();
				// 4. DAO 사용하기
				int row = dao.join(vo);
				if (row > 0) {
					// 5. 성공했다면 join_success.jsp로 foward방식 이동
					request.setAttribute("id", id);
					return "http://localhost:8082/Energizo_Project/Join_Success.jsp";
				} else {
					// 6. 실패했다면 main.jsp로 redirect방식 이동
					// redirect:/ ===> 우리끼리 정한 약속!!!
					// redirect방식으로 이동해야 한다는 것을 FC에 알려주는 방식
					// 정해진거 아님 근데 다른 Framework에서 이렇게 정해져있어서 습관화 하는게 좋음
					return "redirect:/Gomain.do";
	}

	}
}

