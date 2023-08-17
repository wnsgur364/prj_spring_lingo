package com.lingo.app.submit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubmitServiceImpl implements SubmitService {

	@Autowired
	SubmitDao dao;
	
}
