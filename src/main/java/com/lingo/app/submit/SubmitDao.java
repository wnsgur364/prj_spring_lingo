package com.lingo.app.submit;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class SubmitDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.lingo.app.submit.SubmitMapper";
	
	public int selectOneCount(SubmitVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Submit> selectList(SubmitVo vo) {return sqlSession.selectList(namespace + ".selectList", vo); }	
	public List<Submit> selectView(SubmitVo vo) {return sqlSession.selectList(namespace + ".selectView", vo); }	
	public Submit selectOne(SubmitVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(Submit dto){ return sqlSession.update(namespace + ".update", dto); }
	public int delete(Submit dto){ return sqlSession.update(namespace + ".delete", dto); }
	public int insert(Submit dto){ return sqlSession.insert(namespace + ".insert", dto); }
}
