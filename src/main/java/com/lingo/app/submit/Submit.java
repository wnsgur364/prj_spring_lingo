package com.lingo.app.submit;

import java.sql.Date;

public class Submit {

	private String seq;
	private Integer delNy;
	private String quizSeq;
	private String	memberSeq;
	private String	answerSeq;
	private Integer	answerNy;
	private String	answer;
	private String[] selectedAnswers;
	private String name;
	private String answerCheck;
	private Date submitDatetime;
	private String question;
	
//	----
	
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
	public String getQuizSeq() {
		return quizSeq;
	}
	public void setQuizSeq(String quizSeq) {
		this.quizSeq = quizSeq;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
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
	public String getAnswerSeq() {
		return answerSeq;
	}
	public void setAnswerSeq(String answerSeq) {
		this.answerSeq = answerSeq;
	}
	public String[] getSelectedAnswers() {
		return selectedAnswers;
	}
	public void setSelectedAnswers(String[] selectedAnswers) {
		this.selectedAnswers = selectedAnswers;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getSubmitDatetime() {
		return submitDatetime;
	}
	public void setSubmitDatetime(Date submitDatetime) {
		this.submitDatetime = submitDatetime;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswerCheck() {
		return answerCheck;
	}
	public void setAnswerCheck(String answerCheck) {
		this.answerCheck = answerCheck;
	}
	
}
