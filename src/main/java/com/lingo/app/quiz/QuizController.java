package com.lingo.app.quiz;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lingo.app.answer.AnswerServiceImpl;
import com.lingo.app.answer.AnswerVo;
import com.lingo.app.member.MemberServiceImpl;
import com.lingo.app.submit.Submit;
import com.lingo.app.submit.SubmitServiceImpl;

@Controller
public class QuizController {

	@Autowired
	QuizServiceImpl qService;
	@Autowired
	AnswerServiceImpl aService;
	@Autowired
	MemberServiceImpl mService;
	@Autowired
	SubmitServiceImpl sService;
	
	
	@RequestMapping("/quiz")
	public String quiz(QuizVo qvo, Model qModel, AnswerVo avo, Model aModel) {
	    // 기존 코드와 세션 관련 변수 설정 부분은 그대로 유지됩니다.
	    List<Quiz> quizList = qService.selectView(qvo);
	    List<Quiz> selectedQuizzes = new ArrayList<>();

	    int totalQuiz = quizList.size();
	    int quizToShow = 5;

	    if (totalQuiz >= quizToShow) {
	        Random random = new Random();
	        List<Integer> selectIndex = new ArrayList<>();

	        while (selectIndex.size() < quizToShow) {
	            int randomIndex = random.nextInt(totalQuiz);

	            if (!selectIndex.contains(randomIndex)) {
	                selectIndex.add(randomIndex);
	                Quiz selectedQuiz = quizList.get(randomIndex);
	                selectedQuizzes.add(selectedQuiz);
	            }
	        }
	    }

	    qModel.addAttribute("quiz", selectedQuizzes);
	    aModel.addAttribute("answer", aService.selectView(avo));

	    return "/infra/user/index/quiz";
	}
	
	@RequestMapping("/submitInsert")
	public String submitInsert(Submit dto, HttpSession httpSession) {
		String sessionId = (String) httpSession.getAttribute("id");
   		String memberSeq = mService.getMemberSeqBySessionId(sessionId);
		    
   		String[] selectedAnswers = dto.getSelectedAnswers();
   		
		dto.setMemberSeq(memberSeq);	// 정상
		dto.setAnswer(Arrays.toString(selectedAnswers));	// 정상
		
		sService.insert(dto);
		
		return "redirect:/testScores";
	}
	
	@RequestMapping("/testScores")
	public String testScores() {
		return "/infra/user/index/testScores";
	}
	
}
