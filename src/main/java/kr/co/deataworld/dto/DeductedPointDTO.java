package kr.co.deataworld.dto;

/*
 * d_number int AI PK 
 * d_point int 
 * d_date datetime 
 * m_id varchar(20)
 */
public class DeductedPointDTO {
	private int d_number;
	private int d_point;
	private String d_date;
	private String m_id;
	
	@Override
	public String toString() {
		return "DeductedPointDTO [d_number=" + d_number + ", d_point=" + d_point + ", d_date=" + d_date + ", m_id="
				+ m_id + "]";
	}

	public int getD_number() {
		return d_number;
	}

	public void setD_number(int d_number) {
		this.d_number = d_number;
	}

	public int getD_point() {
		return d_point;
	}

	public void setD_point(int d_point) {
		this.d_point = d_point;
	}

	public String getD_date() {
		return d_date;
	}

	public void setD_date(String d_date) {
		this.d_date = d_date;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	
}
