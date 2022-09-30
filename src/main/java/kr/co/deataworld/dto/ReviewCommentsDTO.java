package kr.co.deataworld.dto;

/*
 * rc_number int AI PK 
 * rc_comment varchar(500) 
 * rc_date datetime 
 * w_number int 
 * m_id varchar(20)
 */

public class ReviewCommentsDTO {
	private int rc_number;
	private String rc_comment;
	private String rc_date;
	private int w_number;
	private String m_id;
	
	@Override
	public String toString() {
		return "ReviewCommentsDTO [rc_number=" + rc_number + ", rc_comment=" + rc_comment + ", rc_date=" + rc_date
				+ ", w_number=" + w_number + ", m_id=" + m_id + "]";
	}

	public int getRc_number() {
		return rc_number;
	}

	public void setRc_number(int rc_number) {
		this.rc_number = rc_number;
	}

	public String getRc_comment() {
		return rc_comment;
	}

	public void setRc_comment(String rc_comment) {
		this.rc_comment = rc_comment;
	}

	public String getRc_date() {
		return rc_date;
	}

	public void setRc_date(String rc_date) {
		this.rc_date = rc_date;
	}

	public int getW_number() {
		return w_number;
	}

	public void setW_number(int w_number) {
		this.w_number = w_number;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	

}
