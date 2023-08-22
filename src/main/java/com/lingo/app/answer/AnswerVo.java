package com.lingo.app.answer;

import com.lingo.app.common.base.BaseVo;

public class AnswerVo extends BaseVo {

	private Integer shOption;
	private String shKeyword;
	private String seq;
	private Integer delNy;
	private Integer answerNy;
	private String answer;
	private Integer quiz_seq;
	private String question;
	
// ----
	
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShKeyword() {
		return shKeyword;
	}
	public void setShKeyword(String shKeyword) {
		this.shKeyword = shKeyword;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public Integer getAnswerNy() {
		return answerNy;
	}
	public void setAnswerNy(Integer answerNy) {
		this.answerNy = answerNy;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public Integer getQuiz_seq() {
		return quiz_seq;
	}
	public void setQuiz_seq(Integer quiz_seq) {
		this.quiz_seq = quiz_seq;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	
}
