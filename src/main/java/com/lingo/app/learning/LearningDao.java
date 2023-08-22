package com.lingo.app.learning;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class LearningDao {

	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.lingo.app.learning.LearningMapper";

	public int selectOneCount(LearningVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Learning> selectList(LearningVo vo) {return sqlSession.selectList(namespace + ".selectList", vo); }
	public Learning selectOne(LearningVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(Learning dto){ return sqlSession.update(namespace + ".update", dto); }
	public int delete(Learning dto){ return sqlSession.update(namespace + ".delete", dto); }
	public int insert(Learning dto){ return sqlSession.insert(namespace + ".insert", dto); }
}
