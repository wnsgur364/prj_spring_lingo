package com.lingo.app.quiz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuizServiceImpl implements QuizService {

	@Autowired
	QuizDao dao;
	
	@Override
	public int selectOneCount(QuizVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Quiz> selectList(QuizVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public Quiz selectOne(QuizVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Quiz dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(Quiz dto) {
		return dao.delete(dto);
	}

	@Override
	public int insert(Quiz dto) {
		return dao.insert(dto);
	}

	@Override
	public List<Quiz> selectView(QuizVo vo) {
		return dao.selectView(vo);
	}

}
