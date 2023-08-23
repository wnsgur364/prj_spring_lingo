package com.lingo.app.quiz;

import java.util.List;

public interface QuizService {
	
	public int selectOneCount(QuizVo vo);
	public List<Quiz> selectList(QuizVo vo);
	public List<Quiz> selectView(QuizVo vo);
	public Quiz selectOne(QuizVo vo);
	public int update(Quiz dto);
	public int delete(Quiz dto);
	public int insert(Quiz dto);
}
