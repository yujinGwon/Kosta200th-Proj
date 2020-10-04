package kr.kosta.bus.model;

import java.sql.Date;

public class EmployerDTO {
	
	private String e_no, e_name, e_jumin, e_dname, e_position, e_b_no, e_license, e_contract, authority;
	private String e_marriage, e_disabled, e_hobby, e_speciality, e_phone, e_pwd;
	private String e_mail, e_add;
	private int e_career, e_break, enabled;
	private Date e_start,e_end;
	
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public String getE_no() {
		return e_no;
	}
	public void setE_no(String e_no) {
		this.e_no = e_no;
	}
	public String getE_name() {
		return e_name;
	}
	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public String getE_jumin() {
		return e_jumin;
	}
	public void setE_jumin(String e_jumin) {
		this.e_jumin = e_jumin;
	}
	public String getE_dname() {
		return e_dname;
	}
	public void setE_dname(String e_dname) {
		this.e_dname = e_dname;
	}
	public String getE_position() {
		return e_position;
	}
	public void setE_position(String e_position) {
		this.e_position = e_position;
	}
	public String getE_b_no() {
		return e_b_no;
	}
	public void setE_b_no(String e_b_no) {
		this.e_b_no = e_b_no;
	}
	public String getE_license() {
		return e_license;
	}
	public void setE_license(String e_license) {
		this.e_license = e_license;
	}
	public String getE_contract() {
		return e_contract;
	}
	public void setE_contract(String e_contract) {
		this.e_contract = e_contract;
	}
	public String getE_marriage() {
		return e_marriage;
	}
	public void setE_marriage(String e_marriage) {
		this.e_marriage = e_marriage;
	}
	public String getE_disabled() {
		return e_disabled;
	}
	public void setE_disabled(String e_disabled) {
		this.e_disabled = e_disabled;
	}
	public String getE_hobby() {
		return e_hobby;
	}
	public void setE_hobby(String e_hobby) {
		this.e_hobby = e_hobby;
	}
	public String getE_speciality() {
		return e_speciality;
	}
	public void setE_speciality(String e_speciality) {
		this.e_speciality = e_speciality;
	}
	public String getE_phone() {
		return e_phone;
	}
	public void setE_phone(String e_phone) {
		this.e_phone = e_phone;
	}
	public String getE_pwd() {
		return e_pwd;
	}
	public void setE_pwd(String e_pwd) {
		this.e_pwd = e_pwd;
	}
	public String getE_mail() {
		return e_mail;
	}
	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}
	public String getE_add() {
		return e_add;
	}
	public void setE_add(String e_add) {
		this.e_add = e_add;
	}
	public int getE_career() {
		return e_career;
	}
	public void setE_career(int e_career) {
		this.e_career = e_career;
	}
	public int getE_break() {
		return e_break;
	}
	public void setE_break(int e_break) {
		this.e_break = e_break;
	}
	public Date getE_start() {
		return e_start;
	}
	public void setE_start(Date e_start) {
		this.e_start = e_start;
	}
	public Date getE_end() {
		return e_end;
	}
	public void setE_end(Date e_end) {
		this.e_end = e_end;
	}

}
