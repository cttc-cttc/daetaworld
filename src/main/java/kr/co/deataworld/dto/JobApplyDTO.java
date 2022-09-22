/* 	ja_number int AI PK 
	ja_date datetime 
	jar_status int 
	jae_status int 
	m_id varchar(20) 
	a_number int 
	i_number int
*/
package kr.co.deataworld.dto;

public class JobApplyDTO {
	
	private int ja_number;
	private String ja_date;
	private int jar_status;
	private int jee_status;
	private String m_id;
	private int a_number;
	private int i_number;
	
	
	public int getJa_number() {
		return ja_number;
	}
	public void setJa_number(int ja_number) {
		this.ja_number = ja_number;
	}
	public String getJa_date() {
		return ja_date;
	}
	public void setJa_date(String ja_date) {
		this.ja_date = ja_date;
	}
	public int getJar_status() {
		return jar_status;
	}
	public void setJar_status(int jar_status) {
		this.jar_status = jar_status;
	}
	public int getJee_status() {
		return jee_status;
	}
	public void setJee_status(int jee_status) {
		this.jee_status = jee_status;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getA_number() {
		return a_number;
	}
	public void setA_number(int a_number) {
		this.a_number = a_number;
	}
	public int getI_number() {
		return i_number;
	}
	public void setI_number(int i_number) {
		this.i_number = i_number;
	}
	
	@Override
	public String toString() {
		return "JobApplyDTO [ja_number=" + ja_number + ", ja_date=" + ja_date + ", jar_status=" + jar_status
				+ ", jee_status=" + jee_status + ", m_id=" + m_id + ", a_number=" + a_number + ", i_number=" + i_number
				+ "]";
	}
	
	
	
	
	
	
	
	
	
}
