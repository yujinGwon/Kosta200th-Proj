package kr.kosta.bus.model;

public class Commute3DTO {
	
	private String comm_e_no, comm_e_name, comm_year, comm_month;
	
	private int c3_chul, c3_gyul, c3_byung, c3_hyu;

	public String getComm_e_no() {
		return comm_e_no;
	}

	public void setComm_e_no(String comm_e_no) {
		this.comm_e_no = comm_e_no;
	}

	public String getComm_e_name() {
		return comm_e_name;
	}

	public void setComm_e_name(String comm_e_name) {
		this.comm_e_name = comm_e_name;
	}

	public String getComm_year() {
		return comm_year;
	}

	public void setComm_year(String comm_year) {
		this.comm_year = comm_year;
	}

	public String getComm_month() {
		return comm_month;
	}

	public void setComm_month(String comm_month) {
		this.comm_month = comm_month;
	}

	public int getC3_chul() {
		return c3_chul;
	}

	public void setC3_chul(int c3_chul) {
		this.c3_chul = c3_chul;
	}

	public int getC3_gyul() {
		return c3_gyul;
	}

	public void setC3_gyul(int c3_gyul) {
		this.c3_gyul = c3_gyul;
	}

	public int getC3_byung() {
		return c3_byung;
	}

	public void setC3_byung(int c3_byung) {
		this.c3_byung = c3_byung;
	}

	public int getC3_hyu() {
		return c3_hyu;
	}

	public void setC3_hyu(int c3_hyu) {
		this.c3_hyu = c3_hyu;
	}

	@Override
	public String toString() {
		return "Commute3DTO [comm_e_no=" + comm_e_no + ", comm_e_name=" + comm_e_name + ", comm_year=" + comm_year
				+ ", comm_month=" + comm_month + ", c3_chul=" + c3_chul + ", c3_gyul=" + c3_gyul + ", c3_byung="
				+ c3_byung + ", c3_hyu=" + c3_hyu + "]";
	}
	
}
