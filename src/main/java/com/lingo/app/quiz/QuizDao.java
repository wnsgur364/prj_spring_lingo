package com.lingo.app.quiz;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class QuizDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.lingo.app.quiz.QuizMapper";

	public int selectOneCount(QuizVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Quiz> selectList(QuizVo vo) {return sqlSession.selectList(namespace + ".selectList", vo); }
	public List<Quiz> selectView(QuizVo vo) {return sqlSession.selectList(namespace + ".selectView", vo); }
	public Quiz selectOne(QuizVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(Quiz dto){ return sqlSession.update(namespace + ".update", dto); }
	public int delete(Quiz dto){ return sqlSession.update(namespace + ".delete", dto); }
	public int insert(Quiz dto){ return sqlSession.insert(namespace + ".insert", dto); }
	
}