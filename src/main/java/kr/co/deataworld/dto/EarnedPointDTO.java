package kr.co.deataworld.dto;

/*
 * e_number int AI PK 
 * e_point int 
 * e_date datetime 
 * m_id varchar(20)
 */
public class EarnedPointDTO {
	private int e_number;
	private int e_point;
	private String e_date;
	private String m_id;
	
	@Override
	public String toString() {
		return "EarnedPointDTO [e_number=" + e_number + ", e_point=" + e_point + ", e_date=" + e_date + ", m_id=" + m_id
				+ "]";
	}

	public int getE_number() {
		return e_number;
	}

	public void setE_number(int e_number) {
		this.e_number = e_number;
	}

	public int getE_point() {
		return e_point;
	}

	public void setE_point(int e_point) {
		this.e_point = e_point;
	}

	public String getE_date() {
		return e_date;
	}

	public void setE_date(String e_date) {
		this.e_date = e_date;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	
}
