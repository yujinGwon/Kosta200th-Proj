package kr.kosta.bus.model;

public class WonlyoDTO {
	
	private String wo_code,wo_b_no,wo_type,wo_date,wo_iptype;
	private int wo_total,wo_cost,wo_no;
	public String getWo_code() {
		return wo_code;
	}
	public void setWo_code(String wo_code) {
		this.wo_code = wo_code;
	}
	public String getWo_b_no() {
		return wo_b_no;
	}
	public void setWo_b_no(String wo_b_no) {
		this.wo_b_no = wo_b_no;
	}
	public String getWo_type() {
		return wo_type;
	}
	public void setWo_type(String wo_type) {
		this.wo_type = wo_type;
	}
	public int getWo_total() {
		return wo_total;
	}
	public void setWo_total(int wo_total) {
		this.wo_total = wo_total;
	}
	public int getWo_cost() {
		return wo_cost;
	}
	public String getWo_date() {
		return wo_date;
	}
	public void setWo_date(String wo_date) {
		this.wo_date = wo_date;
	}
	public String getWo_iptype() {
		return wo_iptype;
	}
	public void setWo_iptype(String wo_iptype) {
		this.wo_iptype = wo_iptype;
	}
	public void setWo_cost(int wo_cost) {
		this.wo_cost = wo_cost;
	}
	
	public int getWo_no() {
		return wo_no;
	}
	public void setWo_no(int wo_no) {
		this.wo_no = wo_no;
	}
	@Override
	public String toString() {
		return "WonlyoDTO [wo_code=" + wo_code + ", wo_b_no=" + wo_b_no + ", wo_type=" + wo_type + ", wo_total="
				+ wo_total + ", wo_cost=" + wo_cost + "]";
	}
	
	
	
}
