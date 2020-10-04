package kr.kosta.bus.model;

import java.sql.Date;

public class RepairDTO {

	private String re_code,re_b_no,re_state,re_bigo,re_breakdown,re_date,re_date2;
	private int re_cost;
	
	public String getRe_code() {
		return re_code;
	}
	public void setRe_code(String re_code) {
		this.re_code = re_code;
	}
	public String getRe_state() {
		return re_state;
	}
	public void setRe_state(String re_state) {
		this.re_state = re_state;
	}
	public String getRe_bigo() {
		return re_bigo;
	}
	public void setRe_bigo(String re_bigo) {
		this.re_bigo = re_bigo;
	}
	public String getRe_breakdown() {
		return re_breakdown;
	}
	public void setRe_breakdown(String re_breakdown) {
		this.re_breakdown = re_breakdown;
	}
	public String getRe_b_no() {
		return re_b_no;
	}
	public void setRe_b_no(String re_b_no) {
		this.re_b_no = re_b_no;
	}

	public int getRe_cost() {
		return re_cost;
	}
	public void setRe_cost(int re_cost) {
		this.re_cost = re_cost;
	}
	

	public String getRe_date() {
		return re_date;
	}
	public void setRe_date(String re_date) {
		this.re_date = re_date;
	}

	public String getRe_date2() {
		return re_date2;
	}
	public void setRe_date2(String re_date2) {
		this.re_date2 = re_date2;
	}
	@Override
	public String toString() {
		return "RepairDTO [re_code=" + re_code + ", re_b_no=" + re_b_no + ", re_state=" + re_state + ", re_bigo="
				+ re_bigo + ", re_breakdown=" + re_breakdown + ", re_date=" + re_date + ", re_date2=" + re_date2
				+ ", re_cost=" + re_cost + "]";
	}



	
}



