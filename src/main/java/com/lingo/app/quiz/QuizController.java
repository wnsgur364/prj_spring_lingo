package com.lingo.app.quiz;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lingo.app.answer.Answer;
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
	public String quiz(QuizVo qvo, Model qModel, AnswerVo avo, Model aModel, HttpSession httpSession) {
	    String sessionId = (String) httpSession.getAttribute("id");
	    System.out.println("ID: " + sessionId);
	    String memberSeq = mService.getMemberSeqBySessionId(sessionId);
	    System.out.println(sessionId + "의 seq는 " + memberSeq);
	    
	    List<Quiz> quiz = qService.selectView(qvo);
	    List<Quiz> selectQuiz = new ArrayList<Quiz>();
	    StringBuilder selectedQuizSeqBuilder = new StringBuilder(); // 여러 개의 퀴즈 seq 값을 담을 StringBuilder
	    StringBuilder selectedAnswerSeqBuilder = new StringBuilder(); // 여러 개의 정답 seq 값을 담을 StringBuilder
	    String selectedQuizSeq = ""; // 퀴즈 seq 값을 담을 변수 초기화
	    String selectedAnswerSeq = ""; // 정답 seq 값을 담을 변수 초기화
	    
	    int totalQuiz = quiz.size();
	    int quizToShow = 5; // 보여질 퀴즈 숫자 (20개)

	    if (totalQuiz >= quizToShow) {
	        Random random = new Random();
	        List<Integer> selectIndex = new ArrayList<Integer>();
	        while (selectIndex.size() < quizToShow) {
	            int randomIndex = random.nextInt(totalQuiz);

	            if (!selectIndex.contains(randomIndex)) {
	                selectIndex.add(randomIndex);
	                Quiz selectedQuiz = quiz.get(randomIndex);
	                selectQuiz.add(quiz.get(randomIndex));

	                selectedQuizSeqBuilder.append(selectedQuiz.getSeq()).append(", "); // 퀴즈 seq 값을 StringBuilder에 추가

	                List<Answer> selectAnswers = aService.selectView(avo);
	                for (Answer selectedAnswer : selectAnswers) {
	                    if (selectedAnswer.getQuiz_seq().equals(selectedQuiz.getSeq())) { // 퀴즈와 정답의 seq 값이 같은 경우
	                        selectedAnswerSeqBuilder.append(selectedAnswer.getSeq()).append(", "); // 정답 seq 값을 StringBuilder에 추가
	                    } else {
		                	// by pass
		                }
	                } 
	            } else {
	            	// by pass
	            }
	        }
	    } else {
	        // by pass
	    }

	    // 마지막에 불필요한 쉼표와 공백 제거
	    selectedQuizSeqBuilder.setLength(selectedQuizSeqBuilder.length() - 2);
	    selectedAnswerSeqBuilder.setLength(selectedAnswerSeqBuilder.length() - 2);

	    // StringBuilder를 String으로 변환하여 할당
	    selectedQuizSeq = selectedQuizSeqBuilder.toString();
	    selectedAnswerSeq = selectedAnswerSeqBuilder.toString();
	    
	    httpSession.setAttribute("selectedQuizSeq", selectedQuizSeq);
	    httpSession.setAttribute("selectedAnswerSeq", selectedAnswerSeq);
	    
//	    qModel.addAttribute("selectedQuizSeq", selectedQuizSeq);
//	    aModel.addAttribute("selectedAnswerSeq", selectedAnswerSeq);
	    
	    qModel.addAttribute("quiz", selectQuiz);
        aModel.addAttribute("answer", aService.selectView(avo));

	    System.out.println(sessionId + " 의 seq는 " + memberSeq + " 의 퀴즈 seq는 " + selectedQuizSeq + " 의 정답 seq는 " + selectedAnswerSeq);

	    return "/infra/user/index/quiz";
	}
	
	@ResponseBody
	@RequestMapping("/submitInsert")
	public String submitInsert(Submit dto, HttpSession httpSession) {

	    String sessionId = (String) httpSession.getAttribute("id");
	    String memberSeq = mService.getMemberSeqBySessionId(sessionId);
	    String selectedQuizSeq = (String) httpSession.getAttribute("selectedQuizSeq");
	    String selectedAnswerSeq = (String) httpSession.getAttribute("selectedAnswerSeq");
	    List<Submit> selectedAnswers = dto.getSelectedAnswers();
	    
	    System.out.println(sessionId + "의 seq는 " + memberSeq + "이고 " + selectedQuizSeq + " 의 정답 시퀀스는 " + selectedAnswerSeq);
	    
	    dto.setQuizSeq(selectedQuizSeq);
	    dto.setMemberSeq(memberSeq);
	    dto.setAnswerNy(null);
	    	
	    System.out.println("퀴즈 seq: " + dto.getQuizSeq() + ", 회원 seq: " + dto.getMemberSeq() + ", 정답유무: " + dto.getAnswerNy() + ", 정답 seq: " + selectedAnswers);
	    
	    
		sService.insert(dto);
		return "redirect:/materials";
	}
	
	
	
	//admin
	
	
	
	 @RequestMapping("/quizList")
	    public String quizList(@ModelAttribute("vo") QuizVo vo, Model model) {
	        
	    	vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
	    	
			vo.setParamsPaging(qService.selectOneCount(vo));
	    	
	    	
			if(vo.getTotalRows() > 0) {
	    	List<Quiz> list = qService.selectList(vo);
	        model.addAttribute("list", list); 
			} else {
			
			}
	        return "infra/admin/quiz/quizList";
	    }
	    
	
		@RequestMapping("/quizForm")
		public String quizForm(QuizVo vo, Model model) {
	
	
			Quiz item = qService.selectOne(vo);
			
			model.addAttribute("item", item);
			
			 return "/infra/admin/quiz/quizForm";
		}
		
	
}
