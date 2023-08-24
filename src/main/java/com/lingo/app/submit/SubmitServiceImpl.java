package com.lingo.app.submit;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lingo.app.answer.Answer;
import com.lingo.app.answer.AnswerVo;
import com.lingo.app.answer.AnswerService;
import com.lingo.app.answer.AnswerServiceImpl;

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
	
	@Autowired
	AnswerServiceImpl aService;;
	@Override
	public int insert(Submit dto) {
	    String[] answerSeqs = dto.getSelectedAnswers();
	    int insertedDataCount = 0; // 인서트된 데이터 개수를 세기 위한 변수
	    AnswerVo avo = new AnswerVo(); // 객체 생성 또는 가져오기
	    List<Answer> selectedAnswerList = aService.selectView(avo);
	    
	    for (String answerSeq : answerSeqs) {
	    	String answerValue = dto.getAnswer(); // 여기서는 [254, 312, 305, 3, 64] 와 같은 문자열
	        answerValue = answerValue.substring(1, answerValue.length() - 1); // '['와 ']' 제거
	        String[] answerArray = answerValue.split(", "); // 쉼표와 공백을 기준으로 문자열을 분리

	        // 선택된 정답 개수만큼 루프를 돌면서 인서트 수행
	        for (String selectedAnswer : answerArray) {
	            selectedAnswer = selectedAnswer.trim(); // 앞뒤 공백 제거
	            if (answerSeq.equals(selectedAnswer)) { // 선택된 정답인 경우에만 인서트
	                Submit newDto = new Submit(); // 새로운 dto 객체 생성
	                newDto.setAnswer(selectedAnswer);
	                newDto.setMemberSeq(dto.getMemberSeq());
	                
	                for (Answer answerDto : selectedAnswerList) {
	                    if (selectedAnswer.equals(answerDto.getSeq())) { // 선택된 정답과 Answer Dto의 seq 값이 일치하면
	                        newDto.setQuizSeq(answerDto.getQuiz_seq());
	                        newDto.setAnswerNy(answerDto.getAnswerNy());
	                        break; // 해당 조건을 만족하는 Answer Dto를 찾았으므로 더 이상 루프를 돌 필요 없음
	                    }
	                }
	                
	                // 선택된 정답을 설정
	                dao.insert(newDto); // 새로운 dto 객체로 데이터베이스에 저장
	                insertedDataCount++; // 데이터가 인서트될 때마다 카운트 증가
	            }
	        }
	    }

	    return insertedDataCount; // 저장한 데이터 개수 반환
	}

	@Override
	public List<Submit> selectView(SubmitVo vo) {
		return dao.selectView(vo);
	}
}
