package kr.co.deataworld.dto;

public class ResumeDTO {
	
	private int i_number;
	private String i_title;
	private String i_contents;
	private String i_date;
	private int i_default;
	private String m_id;
	
	
	public int getI_number() {
		return i_number;
	}
	public void setI_number(int i_number) {
		this.i_number = i_number;
	}
	public String getI_title() {
		return i_title;
	}
	public void setI_title(String i_title) {
		this.i_title = i_title;
	}
	public String getI_contents() {
		return i_contents;
	}
	public void setI_contents(String i_contents) {
		this.i_contents = i_contents;
	}
	public String getI_date() {
		return i_date;
	}
	public void setI_date(String i_date) {
		this.i_date = i_date;
	}
	public int getI_default() {
		return i_default;
	}
	public void setI_default(int i_default) {
		this.i_default = i_default;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	@Override
	public String toString() {
		return "ResumeDTO [i_number=" + i_number + ", i_title=" + i_title + ", i_contents=" + i_contents + ", i_date="
				+ i_date + ", i_default=" + i_default + ", m_id=" + m_id + "]";
	}
	
	
	
	

}
