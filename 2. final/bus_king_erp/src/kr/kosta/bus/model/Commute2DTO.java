package kr.kosta.bus.model;

public class Commute2DTO {
	
	private String c2_e_dname;
	
	private int c2_chul, c2_gyul, c2_byung, c2_hyu, c2_chong;

	public String getC2_e_dname() {
		return c2_e_dname;
	}

	public void setC2_e_dname(String c2_e_dname) {
		this.c2_e_dname = c2_e_dname;
	}

	public int getC2_chul() {
		return c2_chul;
	}

	public void setC2_chul(int c2_chul) {
		this.c2_chul = c2_chul;
	}

	public int getC2_gyul() {
		return c2_gyul;
	}

	public void setC2_gyul(int c2_gyul) {
		this.c2_gyul = c2_gyul;
	}

	public int getC2_byung() {
		return c2_byung;
	}

	public void setC2_byung(int c2_byung) {
		this.c2_byung = c2_byung;
	}

	public int getC2_hyu() {
		return c2_hyu;
	}

	public void setC2_hyu(int c2_hyu) {
		this.c2_hyu = c2_hyu;
	}

	public int getC2_chong() {
		return c2_chong;
	}

	public void setC2_chong(int c2_chong) {
		this.c2_chong = c2_chong;
	}

	@Override
	public String toString() {
		return "Commute2DTO [c2_e_dname=" + c2_e_dname + ", c2_chul=" + c2_chul + ", c2_gyul=" + c2_gyul + ", c2_byung="
				+ c2_byung + ", c2_hyu=" + c2_hyu + ", c2_chong=" + c2_chong + "]";
	}
	
}
