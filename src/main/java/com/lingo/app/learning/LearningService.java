package com.lingo.app.learning;

import java.util.List;

public interface LearningService {

	
	public int selectOneCount(LearningVo vo);
	public List<Learning> selectList(LearningVo vo);
	public Learning selectOne(LearningVo vo);
	public int update(Learning dto);
	public int delete(Learning dto);
	public int insert(Learning dto);
}
