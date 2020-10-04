package kr.kosta.bus.model;

public class AccidentDTO {

	private int acc_no;
	private String acc_b_no, acc_e_no, acc_e_license, acc_state, acc_located, acc_breakdown;
	private String acc_date;

	public int getAcc_no() {
		return acc_no;
	}

	public void setAcc_no(int acc_no) {
		this.acc_no = acc_no;
	}

	public String getAcc_b_no() {
		return acc_b_no;
	}

	public void setAcc_b_no(String acc_b_no) {
		this.acc_b_no = acc_b_no;
	}

	public String getAcc_e_no() {
		return acc_e_no;
	}

	public void setAcc_e_no(String acc_e_no) {
		this.acc_e_no = acc_e_no;
	}

	public String getAcc_e_license() {
		return acc_e_license;
	}

	public void setAcc_e_license(String acc_e_license) {
		this.acc_e_license = acc_e_license;
	}

	public String getAcc_state() {
		return acc_state;
	}

	public void setAcc_state(String acc_state) {
		this.acc_state = acc_state;
	}

	public String getAcc_located() {
		return acc_located;
	}

	public void setAcc_located(String acc_located) {
		this.acc_located = acc_located;
	}

	public String getAcc_breakdown() {
		return acc_breakdown;
	}

	public void setAcc_breakdown(String acc_breakdown) {
		this.acc_breakdown = acc_breakdown;
	}

	public String getAcc_date() {
		return acc_date;
	}

	public void setAcc_date(String acc_date) {
		this.acc_date = acc_date;
	}

	@Override
	public String toString() {
		return "AccidentDTO [acc_no=" + acc_no + ", acc_b_no=" + acc_b_no + ", acc_e_no=" + acc_e_no
				+ ", acc_e_license=" + acc_e_license + ", acc_state=" + acc_state + ", acc_located=" + acc_located
				+ ", acc_breakdown=" + acc_breakdown + ", acc_date=" + acc_date + "]";
	}

}
