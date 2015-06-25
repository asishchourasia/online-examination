package org.dao.score;

public class Score {
	private int userid;
	private int marks;
	public Score(int userid, int marks) {
		super();
		this.userid = userid;
		this.marks = marks;
	}
	public Score() {
		super();
	}
	public int getUserid() {
		return userid;
	}
	public void setUsername(int username) {
		this.userid = userid;
	}
	public int getMarks() {
		return marks;
	}
	public void setMarks(int marks) {
		this.marks = marks;
	}
	

}
