package kr.co.deataworld.entity;

/*
 * s_number varchar(10) PK 
 * business_license varchar(50) 
 * s_name varchar(50) 
 * s_address varchar(90) 
 * s_picture varchar(20) 
 * s_intro varchar(500) 
 * s_date datetime 
 * s_tag1 varchar(6) 
 * s_tag2 varchar(6) 
 * s_tag3 varchar(6) 
 * s_tag4 varchar(6) 
 * s_tag5 varchar(6) 
 * r_id varchar(20) 
 * a_code varchar(20) 
 * j_code varchar(20)
 */
public class shopInfo {
	private String s_number;
	private String business_license;
	private String s_name;
	private String s_address;
	private String s_picture;
	private String s_intro;
	private String s_date;
	private String s_tag1;
	private String s_tag2;
	private String s_tag3;
	private String s_tag4;
	private String s_tag5;
	private String r_id;
	private String a_code;
	private String j_code;
	
	@Override
	public String toString() {
		return "shopInfo [s_number=" + s_number + ", business_license=" + business_license + ", s_name=" + s_name
				+ ", s_address=" + s_address + ", s_picture=" + s_picture + ", s_intro=" + s_intro + ", s_date="
				+ s_date + ", s_tag1=" + s_tag1 + ", s_tag2=" + s_tag2 + ", s_tag3=" + s_tag3 + ", s_tag4=" + s_tag4
				+ ", s_tag5=" + s_tag5 + ", r_id=" + r_id + ", a_code=" + a_code + ", j_code=" + j_code + "]";
	}

	public String getS_number() {
		return s_number;
	}

	public void setS_number(String s_number) {
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

	public String getS_address() {
		return s_address;
	}

	public void setS_address(String s_address) {
		this.s_address = s_address;
	}

	public String getS_picture() {
		return s_picture;
	}

	public void setS_picture(String s_picture) {
		this.s_picture = s_picture;
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

	public String getR_id() {
		return r_id;
	}

	public void setR_id(String r_id) {
		this.r_id = r_id;
	}

	public String getA_code() {
		return a_code;
	}

	public void setA_code(String a_code) {
		this.a_code = a_code;
	}

	public String getJ_code() {
		return j_code;
	}

	public void setJ_code(String j_code) {
		this.j_code = j_code;
	}
	
	
	
}
