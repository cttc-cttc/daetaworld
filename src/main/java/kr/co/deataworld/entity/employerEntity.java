package kr.co.deataworld.entity;

/*
 * r_number int PK
 * r_id varchar(20) 
 * r_password varchar(20) 
 * r_name varchar(20) 
 * r_nick varchar(20) 
 * r_age varchar(3) 
 * r_gender varchar(1) 
 * r_phone varchar(13) 
 * r_address1 varchar(90) 
 * r_address2 varchar(90) 
 * r_picture varchar(20) 
 * r_email varchar(30) 
 * r_terms1 int 
 * r_terms2 int 
 * r_regdate datetime 
 * r_warned int 
 * r_banned int 
 * r_quitted int
 */

public class employerEntity {
	private int r_number;
	private String r_id;
	private String r_password;
	private String r_name;
	private String r_nick;
	private int r_age;
	private String r_gender;
	private String r_phone;
	private String r_address1;
	private String r_address2;
	private String r_picture;
	private String r_email;
	private int r_terms1;
	private int r_terms2;
	private String r_regdate;
	private int r_warned;
	private int r_banned;
	private int r_quitted;
	
	@Override
	public String toString() {
		return "employerEntity [r_number=" + r_number + ", r_id=" + r_id + ", r_password=" + r_password + ", r_name="
				+ r_name + ", r_nick=" + r_nick + ", r_age=" + r_age + ", r_gender=" + r_gender + ", r_phone=" + r_phone
				+ ", r_address1=" + r_address1 + ", r_address2=" + r_address2 + ", r_picture=" + r_picture + ", r_email=" + r_email + ", r_terms1="
				+ r_terms1 + ", r_terms2=" + r_terms2 + ", r_regdate=" + r_regdate + ", r_warned=" + r_warned
				+ ", r_banned=" + r_banned + ", r_quitted=" + r_quitted + "]";
	}

	public int getR_number() {
		return r_number;
	}

	public void setR_number(int r_number) {
		this.r_number = r_number;
	}

	public String getR_id() {
		return r_id;
	}

	public void setR_id(String r_id) {
		this.r_id = r_id;
	}

	public String getR_password() {
		return r_password;
	}

	public void setR_password(String r_password) {
		this.r_password = r_password;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public String getR_nick() {
		return r_nick;
	}

	public void setR_nick(String r_nick) {
		this.r_nick = r_nick;
	}

	public int getR_age() {
		return r_age;
	}

	public void setR_age(int r_age) {
		this.r_age = r_age;
	}

	public String getR_gender() {
		return r_gender;
	}

	public void setR_gender(String r_gender) {
		this.r_gender = r_gender;
	}

	public String getR_phone() {
		return r_phone;
	}

	public void setR_phone(String r_phone) {
		this.r_phone = r_phone;
	}

	public String getR_address1() {
		return r_address1;
	}

	public void setR_address1(String r_address1) {
		this.r_address1 = r_address1;
	}
	
	public String getR_address2() {
		return r_address2;
	}

	public void setR_address2(String r_address2) {
		this.r_address2 = r_address2;
	}

	public String getR_picture() {
		return r_picture;
	}

	public void setR_picture(String r_picture) {
		this.r_picture = r_picture;
	}

	public String getR_email() {
		return r_email;
	}

	public void setR_email(String r_email) {
		this.r_email = r_email;
	}

	public int getR_terms1() {
		return r_terms1;
	}

	public void setR_terms1(int r_terms1) {
		this.r_terms1 = r_terms1;
	}

	public int getR_terms2() {
		return r_terms2;
	}

	public void setR_terms2(int r_terms2) {
		this.r_terms2 = r_terms2;
	}

	public String getR_regdate() {
		return r_regdate;
	}

	public void setR_regdate(String r_regdate) {
		this.r_regdate = r_regdate;
	}

	public int getR_warned() {
		return r_warned;
	}

	public void setR_warned(int r_warned) {
		this.r_warned = r_warned;
	}

	public int getR_banned() {
		return r_banned;
	}

	public void setR_banned(int r_banned) {
		this.r_banned = r_banned;
	}

	public int getR_quitted() {
		return r_quitted;
	}

	public void setR_quitted(int r_quitted) {
		this.r_quitted = r_quitted;
	}
	
	

}
