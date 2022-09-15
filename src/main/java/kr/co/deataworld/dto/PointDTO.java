package kr.co.deataworld.dto;

/*
 * p_number int AI PK 
 * point int 
 * m_id varchar(20)
 */

public class PointDTO {
	private int p_number;
	private int point;
	private String m_id;
	
	@Override
	public String toString() {
		return "PointDTO [p_number=" + p_number + ", point=" + point + ", m_id=" + m_id + "]";
	}

	public int getP_number() {
		return p_number;
	}

	public void setP_number(int p_number) {
		this.p_number = p_number;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}	
	
}
