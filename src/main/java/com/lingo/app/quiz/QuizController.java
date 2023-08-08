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
        List<Quiz> allQuizzes = qService.selectList(qvo);

        List<Quiz> selectedQuizzes = new ArrayList<>();

        // Assuming allQuizzes and allAnswers have the same size and corresponding indices match

        int totalQuestions = allQuizzes.size();
        int numQuestionsToShow = 20;

        // Ensure we have enough questions to show
        if (totalQuestions >= numQuestionsToShow) {
            Random random = new Random();
            List<Integer> selectedIndices = new ArrayList<>();

            while (selectedIndices.size() < numQuestionsToShow) {
                int randomIndex = random.nextInt(totalQuestions);
                
                // Avoid duplicate questions
                if (!selectedIndices.contains(randomIndex)) {
                    selectedIndices.add(randomIndex);
                    selectedQuizzes.add(allQuizzes.get(randomIndex));
                }
            }
        } else {
            // Handle the case where there are not enough questions
            // You can show a message or take a different action here
        }

        qModel.addAttribute("quiz", selectedQuizzes);
        aModel.addAttribute("answer", aService.selectList(avo));

        return "/infra/user/index/quiz";
    }
}
