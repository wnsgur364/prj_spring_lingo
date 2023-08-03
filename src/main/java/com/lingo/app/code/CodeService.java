package com.lingo.app.code;

import java.util.List;

import com.lingo.app.code.Code;
import com.lingo.app.code.CodeVo;

public interface CodeService {

	public int selectOneCount(CodeVo vo);
	public List<Code> selectList(CodeVo vo);
	public Code selectOne(CodeVo vo);
	public int update(Code dto);
	public int delete(Code dto);
	public int uelete(Code dto);
	public int insert(Code dto);
}
