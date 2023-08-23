package com.lingo.app.submit;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubmitServiceImpl implements SubmitService {

	@Autowired
	SubmitDao dao;

	@Override
	public int selectOneCount(SubmitVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Submit> selectList(SubmitVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public Submit selectOne(SubmitVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Submit dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(Submit dto) {
		return dao.delete(dto);
	}

	@Override
	public int insert(Submit dto) {
		
		
		
		return dao.insert(dto);
	}
	
}
