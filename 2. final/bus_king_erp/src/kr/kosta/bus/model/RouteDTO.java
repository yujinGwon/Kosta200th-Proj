package kr.kosta.bus.model;

public class RouteDTO {
	
	private String r_no, r_start, r_end, r_map, r_s_time, r_e_time;
	private int r_interval, r_pay_adult, r_pay_adult2, r_pay_teen, r_pay_teen2, r_pay_kid, r_pay_kid2;
	
	public String getR_no() {
		return r_no;
	}
	public void setR_no(String r_no) {
		this.r_no = r_no;
	}
	public String getR_start() {
		return r_start;
	}
	public void setR_start(String r_start) {
		this.r_start = r_start;
	}
	public String getR_end() {
		return r_end;
	}
	public void setR_end(String r_end) {
		this.r_end = r_end;
	}
	public String getR_map() {
		return r_map;
	}
	public void setR_map(String r_map) {
		this.r_map = r_map;
	}
	public String getR_s_time() {
		return r_s_time;
	}
	public void setR_s_time(String r_s_time) {
		this.r_s_time = r_s_time;
	}
	public String getR_e_time() {
		return r_e_time;
	}
	public void setR_e_time(String r_e_time) {
		this.r_e_time = r_e_time;
	}
	public int getR_interval() {
		return r_interval;
	}
	public void setR_interval(int r_interval) {
		this.r_interval = r_interval;
	}
	public int getR_pay_adult() {
		return r_pay_adult;
	}
	public void setR_pay_adult(int r_pay_adult) {
		this.r_pay_adult = r_pay_adult;
	}
	public int getR_pay_adult2() {
		return r_pay_adult2;
	}
	public void setR_pay_adult2(int r_pay_adult2) {
		this.r_pay_adult2 = r_pay_adult2;
	}
	public int getR_pay_teen() {
		return r_pay_teen;
	}
	public void setR_pay_teen(int r_pay_teen) {
		this.r_pay_teen = r_pay_teen;
	}
	public int getR_pay_teen2() {
		return r_pay_teen2;
	}
	public void setR_pay_teen2(int r_pay_teen2) {
		this.r_pay_teen2 = r_pay_teen2;
	}
	public int getR_pay_kid() {
		return r_pay_kid;
	}
	public void setR_pay_kid(int r_pay_kid) {
		this.r_pay_kid = r_pay_kid;
	}
	public int getR_pay_kid2() {
		return r_pay_kid2;
	}
	public void setR_pay_kid2(int r_pay_kid2) {
		this.r_pay_kid2 = r_pay_kid2;
	}
	@Override
	public String toString() {
		return "RouteDTO [r_no=" + r_no + ", r_start=" + r_start + ", r_end=" + r_end + ", r_map=" + r_map
				+ ", r_s_time=" + r_s_time + ", r_e_time=" + r_e_time + ", r_interval=" + r_interval + ", r_pay_adult="
				+ r_pay_adult + ", r_pay_adult2=" + r_pay_adult2 + ", r_pay_teen=" + r_pay_teen + ", r_pay_teen2="
				+ r_pay_teen2 + ", r_pay_kid=" + r_pay_kid + ", r_pay_kid2=" + r_pay_kid2 + "]";
	}
	
}
