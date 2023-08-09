package com.lingo.app.answer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AnswerServiceImpl implements AnswerService {

	@Autowired
	AnswerDao dao;
	
	@Override
	public int selectOneCount(AnswerVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Answer> selectList(AnswerVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public Answer selectOne(AnswerVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Answer dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(Answer dto) {
		return dao.delete(dto);
	}

	@Override
	public int insert(Answer dto) {
		return dao.insert(dto);
	}

}
