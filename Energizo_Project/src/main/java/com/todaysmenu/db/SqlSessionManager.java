package com.todaysmenu.db;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {

	// 생성자와 같은 역할
		// new SqlSessionManager() ---->이때 실행되는 게 생성자
		// static{} ---> 가장 먼저 실행되는 코드
		// Arrays.toString();
		public static SqlSessionFactory sqlSessionFactory;
		static {
			// 1. mybatis 환경설정 파일 경로설정
			// 2. 경로는 수정 가능 !! 나머지 코드는 고치지 말자!!!!********
			String resource = "com/todaysmenu/db/mybatis-config.xml";
			// 2. 읽을 수 있는 통로 하나 선언
			InputStream inputStream;
			try {
				// 3. 파일을 읽어서 inputStream 생성
				inputStream = Resources.getResourceAsStream(resource);
				// 4. DBCP (== SQLSessionFactory)생성
				// Connection ==SqlSession
				// Session을 가져오는 공장에서 빌려오기
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		public static SqlSessionFactory getFactory() {
			return sqlSessionFactory;
		}

}
