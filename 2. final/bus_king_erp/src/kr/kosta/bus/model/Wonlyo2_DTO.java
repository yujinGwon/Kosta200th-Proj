package kr.kosta.bus.model;

public class Wonlyo2_DTO {

	private String wo2_iptype,wo2_date,wo2_type,wo2_no,wo2_b_no,wo2_code;
	private int  wo2_number,wo2_total;
	
	public String getWo2_code() {
		return wo2_code;
	}
	public void setWo2_code(String wo2_code) {
		this.wo2_code = wo2_code;
	}
	public String getWo2_iptype() {
		return wo2_iptype;
	}
	public void setWo2_iptype(String wo2_iptype) {
		this.wo2_iptype = wo2_iptype;
	}
	public String getWo2_date() {
		return wo2_date;
	}
	public void setWo2_date(String wo2_date) {
		this.wo2_date = wo2_date;
	}
	public String getWo2_type() {
		return wo2_type;
	}
	public void setWo2_type(String wo2_type) {
		this.wo2_type = wo2_type;
	}

	public String getWo2_no() {
		return wo2_no;
	}
	public void setWo2_no(String wo2_no) {
		this.wo2_no = wo2_no;

	}
	public int getWo2_number() {
		return wo2_number;
	}
	public void setWo2_number(int wo2_number) {
		this.wo2_number = wo2_number;
	}
	@Override
	public String toString() {
		return "Wonlyo2_DTO [wo2_iptype=" + wo2_iptype + ", wo2_date=" + wo2_date + ", wo2_type=" + wo2_type
				+ ", wo2_no=" + wo2_no + ", wo2_number=" + wo2_number + "]";
	}
	public String getWo2_b_no() {
		return wo2_b_no;
	}
	public int getWo2_total() {
		return wo2_total;
	}
	public void setWo2_total(int wo2_total) {
		this.wo2_total = wo2_total;
	}
	public void setWo2_b_no(String wo2_b_no) {
		this.wo2_b_no = wo2_b_no;
	}
	
	
}
