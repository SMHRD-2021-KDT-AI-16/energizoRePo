package com.todaysmenu.frontcontroller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todaysmenu.controller.IdCheckService;
import com.todaysmenu.controller.JoinService;
import com.todaysmenu.controller.LoginService;
import com.todaysmenu.controller.command;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	HashMap<String, command> map = new HashMap<>();
	
	@Override
	public void init() throws ServletException {
		super.init();

		map.put("jsp/Join.do", new JoinService());
		map.put("jsp/Login.do", new LoginService());
		map.put("jsp/IdCheck.do", new IdCheckService());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uri = request.getRequestURI();
		String cp = request.getContextPath();
		String path = uri.substring(cp.length()+1);
		
		request.setCharacterEncoding("UTF-8");
		
		String finalpath = null;
		command com = null;
		if (path.contains("Go")){
			finalpath = path.replace("Go", "").replace(".do", ".jsp").replace("jsp/", "");
			System.out.println(finalpath);
		} else {
			System.out.println(path);
			com = map.get(path);
			finalpath = com.execute(request, response);
		}
		
		if (finalpath != null) {
			if (finalpath.contains("redirect:/")) {
				System.out.println(finalpath);
				response.sendRedirect(finalpath.replaceAll("redirect:/", ""));
			} else {
				System.out.println(finalpath);
				RequestDispatcher rd = request.getRequestDispatcher(finalpath);
				//RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/" + finalpath);
				rd.forward(request, response);
			}
		}
		
	}

}
