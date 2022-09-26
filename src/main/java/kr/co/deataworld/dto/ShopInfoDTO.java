package kr.co.deataworld.dto;

/*
 * s_number int AI PK 
 * business_license varchar(50) 
 * s_name varchar(50) 
 * s_address1 varchar(50) 
 * s_address2 varchar(45) 
 * s_picture1 varchar(20) 
 * s_picture2 varchar(20) 
 * s_picture3 varchar(20) 
 * s_intro varchar(500) 
 * s_date datetime 
 * s_tag1 varchar(6) 
 * s_tag2 varchar(6) 
 * s_tag3 varchar(6) 
 * s_tag4 varchar(6) 
 * s_tag5 varchar(6) 
 * m_id varchar(20) 
 * a_code int
 * j_code varchar(5)
 */
public class ShopInfoDTO {
	private int s_number;
	private String business_license;
	private String s_name;
	private String s_address1;
	private String s_address2;
	private String s_picture1;
	private String s_picture2;
	private String s_picture3;
	private String s_intro;
	private String s_date;
	private String s_tag1;
	private String s_tag2;
	private String s_tag3;
	private String s_tag4;
	private String s_tag5;
	private String m_id;
	private String a_code;
	private int j_code;
	
	@Override
	public String toString() {
		return "ShopInfoDTO [s_number=" + s_number + ", business_license=" + business_license + ", s_name=" + s_name
				+ ", s_address1=" + s_address1 + ", s_address2=" + s_address2 + ", s_picture1=" + s_picture1
				+ ", s_picture2=" + s_picture2 + ", s_picture3=" + s_picture3 + ", s_intro=" + s_intro + ", s_date="
				+ s_date + ", s_tag1=" + s_tag1 + ", s_tag2=" + s_tag2 + ", s_tag3=" + s_tag3 + ", s_tag4=" + s_tag4
				+ ", s_tag5=" + s_tag5 + ", m_id=" + m_id + ", a_code=" + a_code + ", j_code=" + j_code + "]";
	}

	public int getS_number() {
		return s_number;
	}

	public void setS_number(int s_number) {
		this.s_number = s_number;
	}

	public String getBusiness_license() {
		return business_license;
	}

	public void setBusiness_license(String business_license) {
		this.business_license = business_license;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getS_address1() {
		return s_address1;
	}

	public void setS_address1(String s_address1) {
		this.s_address1 = s_address1;
	}

	public String getS_address2() {
		return s_address2;
	}

	public void setS_address2(String s_address2) {
		this.s_address2 = s_address2;
	}

	public String getS_picture1() {
		return s_picture1;
	}

	public void setS_picture1(String s_picture1) {
		this.s_picture1 = s_picture1;
	}

	public String getS_picture2() {
		return s_picture2;
	}

	public void setS_picture2(String s_picture2) {
		this.s_picture2 = s_picture2;
	}

	public String getS_picture3() {
		return s_picture3;
	}

	public void setS_picture3(String s_picture3) {
		this.s_picture3 = s_picture3;
	}

	public String getS_intro() {
		return s_intro;
	}

	public void setS_intro(String s_intro) {
		this.s_intro = s_intro;
	}

	public String getS_date() {
		return s_date;
	}

	public void setS_date(String s_date) {
		this.s_date = s_date;
	}

	public String getS_tag1() {
		return s_tag1;
	}

	public void setS_tag1(String s_tag1) {
		this.s_tag1 = s_tag1;
	}

	public String getS_tag2() {
		return s_tag2;
	}

	public void setS_tag2(String s_tag2) {
		this.s_tag2 = s_tag2;
	}

	public String getS_tag3() {
		return s_tag3;
	}

	public void setS_tag3(String s_tag3) {
		this.s_tag3 = s_tag3;
	}

	public String getS_tag4() {
		return s_tag4;
	}

	public void setS_tag4(String s_tag4) {
		this.s_tag4 = s_tag4;
	}

	public String getS_tag5() {
		return s_tag5;
	}

	public void setS_tag5(String s_tag5) {
		this.s_tag5 = s_tag5;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getA_code() {
		return a_code;
	}

	public void setA_code(String a_code) {
		this.a_code = a_code;
	}

	public int getJ_code() {
		return j_code;
	}

	public void setJ_code(int j_code) {
		this.j_code = j_code;
	}	
	
}
