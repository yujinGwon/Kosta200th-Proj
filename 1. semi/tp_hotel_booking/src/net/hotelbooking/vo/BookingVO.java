package net.hotelbooking.vo;

public class BookingVO {
	private int b_no, b_u_id, b_h_id, b_r_id, b_people, b_plus = 0;
	private String b_checkin, b_checkout, b_date = null;
	private String u_email, h_name, r_name; // 다른 테이블에서 가져온 것들 
	
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public int getB_u_id() {
		return b_u_id;
	}
	public void setB_u_id(int b_u_id) {
		this.b_u_id = b_u_id;
	}
	public int getB_h_id() {
		return b_h_id;
	}
	public void setB_h_id(int b_h_id) {
		this.b_h_id = b_h_id;
	}
	public int getB_r_id() {
		return b_r_id;
	}
	public void setB_r_id(int b_r_id) {
		this.b_r_id = b_r_id;
	}
	public int getB_people() {
		return b_people;
	}
	public void setB_people(int b_people) {
		this.b_people = b_people;
	}
	public int getB_plus() {
		return b_plus;
	}
	public void setB_plus(int b_plus) {
		this.b_plus = b_plus;
	}
	public String getB_checkin() {
		return b_checkin;
	}
	public void setB_checkin(String b_checkin) {
		this.b_checkin = b_checkin;
	}
	public String getB_checkout() {
		return b_checkout;
	}
	public void setB_checkout(String b_checkout) {
		this.b_checkout = b_checkout;
	}
	public String getB_date() {
		return b_date;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	// 다른 테이블에서 가져온 것들 
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
}
