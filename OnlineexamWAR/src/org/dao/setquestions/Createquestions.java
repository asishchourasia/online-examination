package org.dao.setquestions;

public class Createquestions {
	private int chapterid;
	private int questionno;
	private String question;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String answer;
	
	public Createquestions(int chapterid, String question, String option1,
			String option2, String option3, String option4, String answer) {
		super();
		this.chapterid=chapterid;
		
		this.question = question;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.answer = answer;
	}

	public Createquestions() {
		super();
	}
	public int getChapterid() {
		return chapterid;
	}

	public void setChapterid(int chapterid) {
		this.chapterid = chapterid;
	}
	public int getQuestionno() {
		return questionno;
	}

	public void setQuestionno(int questionno) {
		this.questionno = questionno;
	}
	

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	

}
