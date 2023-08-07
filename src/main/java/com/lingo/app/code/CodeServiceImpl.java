package com.lingo.app.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.lingo.app.code.CodeService;
import com.lingo.app.code.Code;
import com.lingo.app.code.CodeDao;
import com.lingo.app.code.CodeVo;

public class CodeServiceImpl implements CodeService {

	
	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList(CodeVo vo) { 
		return dao.selectList(vo); 
	}

	@Override
	public Code selectOne(CodeVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Code dto) {
		return dao.update(dto); 
	}

	@Override
	public int delete(Code dto) {
		return dao.delete(dto);
	}

	@Override
	public int uelete(Code dto) {
		return dao.uelete(dto);
	}

	@Override
	public int insert(Code dto) {
		return dao.insert(dto);
	}

	@Override
	public int selectOneCount(CodeVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}
	
	
	
	
	
}
