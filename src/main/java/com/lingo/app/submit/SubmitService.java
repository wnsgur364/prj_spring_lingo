package com.lingo.app.submit;

import java.util.List;

public interface SubmitService {
	
	public int selectOneCount(SubmitVo vo);
	public List<Submit> selectList(SubmitVo vo);
	public Submit selectOne(SubmitVo vo);
	public int update(Submit dto);
	public int delete(Submit dto);
	public int insert(Submit dto);
}
