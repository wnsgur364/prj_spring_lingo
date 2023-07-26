package com.lingo.app.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
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
<<<<<<< HEAD
		return  dao.update(dto); 
=======
		return dao.update(dto); 
>>>>>>> branch 'main' of https://github.com/wnsgur364/prj_spring_lingo.git
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
		return dao.selectOneCount(vo);
	}

}
