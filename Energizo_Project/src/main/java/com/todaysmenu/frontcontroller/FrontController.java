package com.todaysmenu.frontcontroller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todaysmenu.controller.BoardDeleteService;
import com.todaysmenu.controller.BoardInsertService;
import com.todaysmenu.controller.BoardSelectService;
import com.todaysmenu.controller.BoardUpdateService;
import com.todaysmenu.controller.CalendarInsertService;
import com.todaysmenu.controller.CalenderDeleteService;
import com.todaysmenu.controller.CalenderUpdateService;
import com.todaysmenu.controller.DeleteService;
import com.todaysmenu.controller.IdCheckService;
import com.todaysmenu.controller.JoinService;
import com.todaysmenu.controller.LoginService;
import com.todaysmenu.controller.LogoutService;
import com.todaysmenu.controller.UpdateService;
import com.todaysmenu.controller.command;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	HashMap<String, command> map = new HashMap<>();
	
	public void init() throws ServletException {
		
		map.put("Join.do", new JoinService());
		map.put("Login.do", new LoginService());
		map.put("Logout.do", new LogoutService());
		map.put("IdCheck.do", new IdCheckService());
		map.put("Delete.do", new DeleteService());
		map.put("Update.do", new UpdateService());
		
		map.put("BoardDelete.do", new BoardDeleteService());
		map.put("BoardInsert.do", new BoardInsertService());
		map.put("BoardSelect.do", new BoardSelectService());
		map.put("BoardUpdate.do", new BoardUpdateService());
		
		map.put("CalendarInsert.do", new CalendarInsertService());
		map.put("CalendarDelete.do", new CalenderDeleteService());
		map.put("CalendarUpdate.do", new CalenderUpdateService());
		
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uri = request.getRequestURI();
		String cp = request.getContextPath();
		String path = uri.substring(cp.length()+1);
		
		request.setCharacterEncoding("UTF-8");
		
		String finalpath = null;
		command com = null;
		
		if (path.contains("Go")){
			path.replace("Go", "").replace(".do", ".jsp");
		} else {
			com = map.get(path);
			finalpath = com.execute(request, response);
		}
		
		if (finalpath != null) {
			if (finalpath.contains("redirect:/")) {
				response.sendRedirect(finalpath.replaceAll("redirect:/", ""));
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("jsp/"+finalpath);
				//RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/" + finalpath);
				rd.forward(request, response);
			}
		}
		
	}

}
