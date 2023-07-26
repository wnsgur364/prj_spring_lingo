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
<<<<<<< HEAD
	private  SqlSession sqlSession;
=======
	private SqlSession sqlSession;
>>>>>>> branch 'main' of https://github.com/wnsgur364/prj_spring_lingo.git
	
	private static String namespace = "com.lingo.app.code.CodeMapper";

<<<<<<< HEAD
	public  int selectOneCount(CodeVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public  List<Code> selectList(CodeVo vo) {return sqlSession.selectList(namespace + ".selectList", vo); }	
	public  Code selectOne(CodeVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public  int updatse(Code dto){ return sqlSession.update(namespace + ".update", dto); }
	public  int delete(Code dto){ return sqlSession.delete(namespace + ".delete", dto); }
	public  int uelete(Code dto){ return sqlSession.update(namespace + ".uelete", dto); }
	public  int insert(Code dto){ return sqlSession.insert(namespace + ".insert", dto); }
=======
	public int selectOneCount(CodeVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Code> selectList(CodeVo vo) {return sqlSession.selectList(namespace + ".selectList", vo); }	
	public Code selectOne(CodeVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(Code dto){ return sqlSession.update(namespace + ".update", dto); }
	public int delete(Code dto){ return sqlSession.delete(namespace + ".delete", dto); }
	public int uelete(Code dto){ return sqlSession.update(namespace + ".uelete", dto); }
	public int insert(Code dto){ return sqlSession.insert(namespace + ".insert", dto); }
>>>>>>> branch 'main' of https://github.com/wnsgur364/prj_spring_lingo.git
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); }
}
