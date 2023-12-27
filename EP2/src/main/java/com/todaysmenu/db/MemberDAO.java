package com.todaysmenu.db;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.todaysmenu.model.BoardVO;
import com.todaysmenu.model.MealVO;
import com.todaysmenu.model.MemberVO;
import com.todaysmenu.model.RecipeVO;

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

	public MemberVO login(MemberVO vo) {
		// 1. 연결객체 빌려오기
		SqlSession sqlsession = factory.openSession(true);
		// 2. 연결객체 사용하기 --> selectOne()
		// <T> : 제네릭기법
		// --> 클래스 내부에서 사용하게 될 자료형을 다른 클래스(바깥쪽)에서 지정해주는 기법
		System.out.println(vo.getUser_id());
		System.out.println(vo.getUser_pw());
		MemberVO login = sqlsession.selectOne("login", vo);
		// 3. 연결객체 반납하기
		sqlsession.close();
		String birth = login.getUser_birthdate();
		String birthday[] = birth.split(" ");
		System.out.println(birthday[0]);
		login.setUser_birthdate(birthday[0]);
		// 4. 결과 반환하기
		return login;
	}

	public boolean IdCheck(String inputI) {
		boolean checkI = false;
		SqlSession sqlsession = factory.openSession(true);
		try {
			checkI = sqlsession.selectOne("idCheck", inputI);

		} catch (Exception e) {
			System.out.println(checkI);
		} finally {
			sqlsession.close();
			System.out.println(checkI);
		}

		return checkI;

	}

	public int mealJoin(MealVO meal) {
		int row = 0;
		SqlSession sqlsession = factory.openSession(true);
		row = sqlsession.insert("insertMeal", meal);
		sqlsession.close();
		return row;
	}

	public int recipeJoin(RecipeVO recipe) {
		int row = 0;
		SqlSession sqlsession = factory.openSession(true);
		row = sqlsession.insert("insertRecipe", recipe);
		sqlsession.close();

		return row;
	}
	public int boardJoin(BoardVO vo) {
		int row=0;
		SqlSession sqlsession = factory.openSession(true);
		row = sqlsession.insert("insertBoard",vo);
		sqlsession.close();
		return row;
	}

	public int update(MemberVO vo) {
		int row =0;
		SqlSession sqlsession = factory.openSession(true);
		row = sqlsession.update("update", vo);
		sqlsession.close();
		return row;
	}
}
