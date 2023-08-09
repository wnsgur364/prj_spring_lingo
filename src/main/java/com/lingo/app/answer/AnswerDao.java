package com.lingo.app.answer;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AnswerDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.lingo.app.answer.AnswerMapper";

	public int selectOneCount(AnswerVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Answer> selectList(AnswerVo vo) {return sqlSession.selectList(namespace + ".selectList", vo); }	
	public Answer selectOne(AnswerVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(Answer dto){ return sqlSession.update(namespace + ".update", dto); }
	public int delete(Answer dto){ return sqlSession.update(namespace + ".delete", dto); }
	public int insert(Answer dto){ return sqlSession.insert(namespace + ".insert", dto); }
	
}
