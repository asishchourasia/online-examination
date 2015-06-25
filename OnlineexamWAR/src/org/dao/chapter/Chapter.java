package org.dao.chapter;

public class Chapter {
    private int chapterid;
    
	public int getChapterid() {
		return chapterid;
	}
	public void setChapterid(int chapterid) {
		this.chapterid = chapterid;
	}
	private String chaptername;
	private String type;
	public Chapter(String chaptername, String type) {
		super();
		
		this.chaptername = chaptername;
		this.type = type;
	}
	public Chapter() {
		super();
	}
	public String getChaptername() {
		return chaptername;
	}
	public void setChaptername(String chaptername) {
		this.chaptername = chaptername;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	

}
