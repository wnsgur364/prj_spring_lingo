package com.lingo.app.learning;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class LearningServiceImpl implements LearningService {

	
	@Autowired
	LearningDao dao;
	
	@Override
	public int selectOneCount(LearningVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Learning> selectList(LearningVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public Learning selectOne(LearningVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Learning dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(Learning dto) {
		return dao.delete(dto);
	}

	@Override
	public int insert(Learning dto) {
		return dao.insert(dto);
	}
}
