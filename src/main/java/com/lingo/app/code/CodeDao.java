package com.lingo.app.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private static SqlSession sqlSession;
	
	private static String namespace = "com.lingo.app.code.CodeMapper";

	public static int selectOneCount(CodeVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public static List<Code> selectList(CodeVo vo) {return sqlSession.selectList(namespace + ".selectList", vo); }	
	public static Code selectOne(CodeVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public static int update(Code dto){ return sqlSession.update(namespace + ".update", dto); }
	public static int delete(Code dto){ return sqlSession.delete(namespace + ".delete", dto); }
	public static int uelete(Code dto){ return sqlSession.update(namespace + ".uelete", dto); }
	public static int insert(Code dto){ return sqlSession.insert(namespace + ".insert", dto); }
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); }
}
