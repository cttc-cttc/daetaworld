package kr.co.deataworld.dto;
/*
 * Table: member
Columns:
m_number int AI PK 
m_id varchar(20) 
m_password varchar(20) 
m_name varchar(10) 
m_nick varchar(20) 
m_age int 
m_gender varchar(1) 
m_phone varchar(13) 
m_address1 varchar(50) 
m_address2 varchar(45) 
m_picture varchar(20) 
m_email varchar(30) 
m_terms1 int 
m_terms2 int 
m_regdate datetime 
m_warned int 
m_banned int 
m_quitted int 
m_type int 
a_code varchar(3)
 */
public class MemberDTO {
	private int m_number;
	private String m_id;
	private String m_password;
	private String m_name;
	private String m_nick; 
	private int m_age; 
	private String m_gender; 
	private String m_phone; 
	private String m_address1;
	private String m_address2;
	private String m_picture;
	private String m_email;
	private int m_terms1;
	private int m_terms2;
	private String m_regdate;
	private int m_warned;
	private int m_banned;
	private int m_quitted;
	private int m_type;
	private String a_code;
	
	public int getM_number() {
		return m_number;
	}
	public void setM_number(int m_number) {
		this.m_number = m_number;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_password() {
		return m_password;
	}
	public void setM_password(String m_password) {
		this.m_password = m_password;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_nick() {
		return m_nick;
	}
	public void setM_nick(String m_nick) {
		this.m_nick = m_nick;
	}
	public int getM_age() {
		return m_age;
	}
	public void setM_age(int m_age) {
		this.m_age = m_age;
	}
	public String getM_gender() {
		return m_gender;
	}
	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getM_address1() {
		return m_address1;
	}
	public void setM_address1(String m_address1) {
		this.m_address1 = m_address1;
	}
	public String getM_address2() {
		return m_address2;
	}
	public void setM_address2(String m_address2) {
		this.m_address2 = m_address2;
	}
	public String getM_picture() {
		return m_picture;
	}
	public void setM_picture(String m_picture) {
		this.m_picture = m_picture;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public int getM_terms1() {
		return m_terms1;
	}
	public void setM_terms1(int m_terms1) {
		this.m_terms1 = m_terms1;
	}
	public int getM_terms2() {
		return m_terms2;
	}
	public void setM_terms2(int m_terms2) {
		this.m_terms2 = m_terms2;
	}
	public String getM_regdate() {
		return m_regdate;
	}
	public void setM_regdate(String m_regdate) {
		this.m_regdate = m_regdate;
	}
	public int getM_warned() {
		return m_warned;
	}
	public void setM_warned(int m_warned) {
		this.m_warned = m_warned;
	}
	public int getM_banned() {
		return m_banned;
	}
	public void setM_banned(int m_banned) {
		this.m_banned = m_banned;
	}
	public int getM_quitted() {
		return m_quitted;
	}
	public void setM_quitted(int m_quitted) {
		this.m_quitted = m_quitted;
	}
	public int getM_type() {
		return m_type;
	}
	public void setM_type(int m_type) {
		this.m_type = m_type;
	}
	public String getA_code() {
		return a_code;
	}
	public void setA_code(String a_code) {
		this.a_code = a_code;
	}
	@Override
	public String toString() {
		return "MemberDTO [m_number=" + m_number + ", m_id=" + m_id + ", m_password=" + m_password + ", m_name="
				+ m_name + ", m_nick=" + m_nick + ", m_age=" + m_age + ", m_gender=" + m_gender + ", m_phone=" + m_phone
				+ ", m_address1=" + m_address1 + ", m_address2=" + m_address2 + ", m_picture=" + m_picture
				+ ", m_email=" + m_email + ", m_terms1=" + m_terms1 + ", m_terms2=" + m_terms2 + ", m_regdate="
				+ m_regdate + ", m_warned=" + m_warned + ", m_banned=" + m_banned + ", m_quitted=" + m_quitted
				+ ", m_type=" + m_type + ", a_code=" + a_code + "]";
	}
}
