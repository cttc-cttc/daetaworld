package kr.co.deataworld.dto;

public class EmployeeDTO {
	
	private int e_number;
	private String e_id;
	private String e_password;
	private String e_name;
	private String e_nick;
	private int e_age;
	private String e_gender;
	private String e_phpone;
	private String e_address;
	private String e_picture;
	private String e_email;
	private int e_terms1;
	private int e_terms2;
	private int inform_agreement;
	private int inquiry_agreement;
	private String e_regdate; 
	private int e_warned; 
	private int e_banned; 
	private int e_quitted; 
	private int a_code;
	
	public int getE_number() {
		return e_number;
	}
	public void setE_number(int e_number) {
		this.e_number = e_number;
	}
	public String getE_id() {
		return e_id;
	}
	public void setE_id(String e_id) {
		this.e_id = e_id;
	}
	public String getE_password() {
		return e_password;
	}
	public void setE_password(String e_password) {
		this.e_password = e_password;
	}
	public String getE_name() {
		return e_name;
	}
	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public String getE_nick() {
		return e_nick;
	}
	public void setE_nick(String e_nick) {
		this.e_nick = e_nick;
	}
	public int getE_age() {
		return e_age;
	}
	public void setE_age(int e_age) {
		this.e_age = e_age;
	}
	public String getE_gender() {
		return e_gender;
	}
	public void setE_gender(String e_gender) {
		this.e_gender = e_gender;
	}
	public String getE_phpone() {
		return e_phpone;
	}
	public void setE_phpone(String e_phpone) {
		this.e_phpone = e_phpone;
	}
	public String getE_address() {
		return e_address;
	}
	public void setE_address(String e_address) {
		this.e_address = e_address;
	}
	public String getE_picture() {
		return e_picture;
	}
	public void setE_picture(String e_picture) {
		this.e_picture = e_picture;
	}
	public String getE_email() {
		return e_email;
	}
	public void setE_email(String e_email) {
		this.e_email = e_email;
	}
	public int getE_terms1() {
		return e_terms1;
	}
	public void setE_terms1(int e_terms1) {
		this.e_terms1 = e_terms1;
	}
	public int getE_terms2() {
		return e_terms2;
	}
	public void setE_terms2(int e_terms2) {
		this.e_terms2 = e_terms2;
	}
	public int getInform_agreement() {
		return inform_agreement;
	}
	public void setInform_agreement(int inform_agreement) {
		this.inform_agreement = inform_agreement;
	}
	public int getInquiry_agreement() {
		return inquiry_agreement;
	}
	public void setInquiry_agreement(int inquiry_agreement) {
		this.inquiry_agreement = inquiry_agreement;
	}
	public String getE_regdate() {
		return e_regdate;
	}
	public void setE_regdate(String e_regdate) {
		this.e_regdate = e_regdate;
	}
	public int getE_warned() {
		return e_warned;
	}
	public void setE_warned(int e_warned) {
		this.e_warned = e_warned;
	}
	public int getE_banned() {
		return e_banned;
	}
	public void setE_banned(int e_banned) {
		this.e_banned = e_banned;
	}
	public int getE_quitted() {
		return e_quitted;
	}
	public void setE_quitted(int e_quitted) {
		this.e_quitted = e_quitted;
	}
	public int getA_code() {
		return a_code;
	}
	public void setA_code(int a_code) {
		this.a_code = a_code;
	}
	@Override
	public String toString() {
		return "EmployeeEntity [e_number=" + e_number + ", e_id=" + e_id + ", e_password=" + e_password + ", e_name="
				+ e_name + ", e_nick=" + e_nick + ", e_age=" + e_age + ", e_gender=" + e_gender + ", e_phpone="
				+ e_phpone + ", e_address=" + e_address + ", e_picture=" + e_picture + ", e_email=" + e_email
				+ ", e_terms1=" + e_terms1 + ", e_terms2=" + e_terms2 + ", inform_agreement=" + inform_agreement
				+ ", inquiry_agreement=" + inquiry_agreement + ", e_regdate=" + e_regdate + ", e_warned=" + e_warned
				+ ", e_banned=" + e_banned + ", e_quitted=" + e_quitted + ", a_code=" + a_code + "]";
	}
	
	
	
	
	
	
	
}
