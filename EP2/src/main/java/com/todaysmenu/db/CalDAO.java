package com.todaysmenu.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.todaysmenu.model.CalVO;

public class CalDAO {

	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	public List<CalVO> calendar() {

		SqlSession sqlsession = factory.openSession(true);

		List<CalVO> cal = sqlsession.selectList("calendar");

		sqlsession.close();

		// System.out.println("cal : "+cal);

		return cal;

	}

	public int calenderJoin(CalVO vo) {
		int row = 0;
		SqlSession sqlsession = factory.openSession(true);

		row = sqlsession.insert("calendarJoin", vo);

		sqlsession.close();
		return row;
	}

}
