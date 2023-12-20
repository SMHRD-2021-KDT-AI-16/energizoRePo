package com.todaysmenu.db;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.todaysmenu.model.MemberVO;

public class MemberDAO {

	private SqlSessionFactory factory = SqlSessionManager.getFactory();
	
	public int join(MemberVO vo) {
		// 1. 연결객체 빌려오기
		// openSession(true)-->autocommit 일어난다
		// openSession(false)-->commit 코드를 작성
		SqlSession sqlsession = factory.openSession(true);
		// 2. 연결객체 사용하기
		// insert into web_member
		// values(?,?,?,?) 
		// row => table에 영향을 받은 행의 개수
		int row = sqlsession.insert("join", vo);
		// 3. 연결객체 다시 반납하기
		sqlsession.close();
		// 4. 결과값 반환하기
		return row;

	}
}
