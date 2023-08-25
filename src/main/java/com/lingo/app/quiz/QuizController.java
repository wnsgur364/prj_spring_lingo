package com.lingo.app.quiz;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lingo.app.answer.AnswerServiceImpl;
import com.lingo.app.answer.AnswerVo;
import com.lingo.app.member.MemberServiceImpl;
import com.lingo.app.submit.Submit;
import com.lingo.app.submit.SubmitServiceImpl;
import com.lingo.app.submit.SubmitVo;

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
	    List<Quiz> selectedQuizzes = new ArrayList<Quiz>();

	    int totalQuiz = quizList.size();
	    int quizToShow = 5;

	    if (totalQuiz >= quizToShow) {
	        Random random = new Random();
	        List<Integer> selectIndex = new ArrayList<Integer>();

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
		
		// 인서트한 데이터를 세션에 저장
	    httpSession.setAttribute("insertedData", dto);
		
		return "redirect:/testScores";
	}
	
	@RequestMapping("/testScores")
	public String testScores(SubmitVo vo, Submit dto, Model model, HttpSession httpSession) {
	    // 세션에서 인서트한 데이터를 가져옴
	    Submit insertedData = (Submit) httpSession.getAttribute("insertedData");
	    
	    // 가져온 데이터를 모델에 추가하여 화면에 표시
	    model.addAttribute("insertedData", insertedData);
	    model.addAttribute("list", sService.selectView(new SubmitVo())); // SubmitVo 객체에 필요한 정보를 추가해야 함
	   
		return "/infra/user/index/testScores";
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
