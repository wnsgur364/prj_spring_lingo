package com.lingo.app.answer;

import java.util.List;

public interface AnswerService {
	
	public int selectOneCount(AnswerVo vo);
	public List<Answer> selectList(AnswerVo vo);
	public List<Answer> selectView(AnswerVo vo);
//	public List<Answer> selectPage(AnswerVo vo);

	public Answer selectOne(AnswerVo vo);
	public int update(Answer dto);
	public int delete(Answer dto);
	public int insert(Answer dto);
	
	
}
