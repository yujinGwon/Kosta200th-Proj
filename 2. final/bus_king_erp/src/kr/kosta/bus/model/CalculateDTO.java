package kr.kosta.bus.model;

public class CalculateDTO {

	/*
	 CAL_CODE VARCHAR2(20) PRIMARY KEY,
	 CAL_DATE DATE,
	 CAL_B_NO CONSTRAINT CALBNO_FK REFERENCES BUS(B_NO),
	 CAL_HAP_C NUMBER,
	 CAL_HAP_M NUMBER,
	 CAL_TOTAL NUMBER,
	 CAL_NAMETAG VARCHAR2(40),
	 CAL_BIGO VARCHAR2(40)
	*/
	private String cal_code, cal_b_no, cal_nametag, cal_bigo;
	private int cal_hap_c, cal_hap_m, cal_total;
	private String cal_date;
	
	public String getCal_code() {
		return cal_code;
	}
	public void setCal_code(String cal_code) {
		this.cal_code = cal_code;
	}
	public String getCal_b_no() {
		return cal_b_no;
	}
	public void setCal_b_no(String cal_b_no) {
		this.cal_b_no = cal_b_no;
	}
	public String getCal_nametag() {
		return cal_nametag;
	}
	public void setCal_nametag(String cal_nametag) {
		this.cal_nametag = cal_nametag;
	}
	public String getCal_bigo() {
		return cal_bigo;
	}
	public void setCal_bigo(String cal_bigo) {
		this.cal_bigo = cal_bigo;
	}
	public int getCal_hap_c() {
		return cal_hap_c;
	}
	public void setCal_hap_c(int cal_hap_c) {
		this.cal_hap_c = cal_hap_c;
	}
	
	public int getCal_hap_m() {
		return cal_hap_m;
	}
	public void setCal_hap_m(int cal_hap_m) {
		this.cal_hap_m = cal_hap_m;
	}
	public int getCal_total() {
		return cal_total;
	}
	public void setCal_total(int cal_total) {
		this.cal_total = cal_total;
	}
	
	public String getCal_date() {
		return cal_date;
	}
	public void setCal_date(String cal_date) {
		this.cal_date = cal_date;
	}
	@Override
	public String toString() {
		return "CalculateDTO [cal_code=" + cal_code + ", cal_b_no=" + cal_b_no + ", cal_nametag=" + cal_nametag
				+ ", cal_bigo=" + cal_bigo + ", cal_hap_c=" + cal_hap_c + ", cal_hap_m=" + cal_hap_m + ", cal_total="
				+ cal_total + ", cal_date=" + cal_date + "]";
	}

	
}
