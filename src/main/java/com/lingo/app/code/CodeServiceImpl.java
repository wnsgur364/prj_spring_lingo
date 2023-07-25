package com.lingo.app.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public abstract class CodeServiceImpl implements CodeService {
	
	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList(CodeVo vo) { 
		return CodeDao.selectList(vo); 
	}

	@Override
	public Code selectOne(CodeVo vo) {
		return CodeDao.selectOne(vo);
	}

	@Override
	public int update(Code dto) {
		return CodeDao.update(dto); 
	}

	@Override
	public int delete(Code dto) {
		return CodeDao.delete(dto);
	}

	@Override
	public int uelete(Code dto) {
		return CodeDao.uelete(dto);
	}

	@Override
	public int insert(Code dto) {
		return CodeDao.insert(dto);
	}

	@Override
	public int selectOneCount(CodeVo vo) {
		return CodeDao.selectOneCount(vo);
	}

}
