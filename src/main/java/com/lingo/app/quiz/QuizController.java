package com.lingo.app.quiz;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lingo.app.answer.AnswerServiceImpl;
import com.lingo.app.answer.AnswerVo;

@Controller
public class QuizController {

	@Autowired
	QuizServiceImpl qService;
	@Autowired
	AnswerServiceImpl aService;
	
    @RequestMapping("/quiz")
    public String quiz(QuizVo qvo, Model qModel, AnswerVo avo, Model aModel) {
        List<Quiz> quiz = qService.selectList(qvo);
        
        List<Quiz> selectQuiz = new ArrayList<Quiz>();
        
        int totalQuiz = quiz.size();
        int quizToShow = 20;	// 보여질 퀴즈 숫자 (20개)

        if (totalQuiz >= quizToShow) {
            Random random = new Random();
            List<Integer> selectIndex = new ArrayList<Integer>();

            while (selectIndex.size() < quizToShow) {
                int randomIndex = random.nextInt(totalQuiz);
                
                if (!selectIndex.contains(randomIndex)) {
                	selectIndex.add(randomIndex);
                    selectQuiz.add(quiz.get(randomIndex));
                }
            }
        } else {
            // by pass
        }

        qModel.addAttribute("quiz", selectQuiz);
        aModel.addAttribute("answer", aService.selectList(avo));

        return "/infra/user/index/quiz";
    }
    
    
}
