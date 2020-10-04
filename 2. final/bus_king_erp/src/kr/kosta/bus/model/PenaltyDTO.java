package kr.kosta.bus.model;

public class PenaltyDTO {

	private int p_cost;
	private String p_code, p_b_no, p_e_no, p_e_license, p_e_name, p_payment, p_located, p_police, p_history, p_bigo;
	private String p_date;

	public int getP_cost() {
		return p_cost;
	}

	public void setP_cost(int p_cost) {
		this.p_cost = p_cost;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getP_b_no() {
		return p_b_no;
	}

	public void setP_b_no(String p_b_no) {
		this.p_b_no = p_b_no;
	}

	public String getP_e_no() {
		return p_e_no;
	}

	public void setP_e_no(String p_e_no) {
		this.p_e_no = p_e_no;
	}

	public String getP_e_license() {
		return p_e_license;
	}

	public void setP_e_license(String p_e_license) {
		this.p_e_license = p_e_license;
	}

	public String getP_e_name() {
		return p_e_name;
	}

	public void setP_e_name(String p_e_name) {
		this.p_e_name = p_e_name;
	}

	public String getP_payment() {
		return p_payment;
	}

	public void setP_payment(String p_payment) {
		this.p_payment = p_payment;
	}

	public String getP_located() {
		return p_located;
	}

	public void setP_located(String p_located) {
		this.p_located = p_located;
	}

	public String getP_police() {
		return p_police;
	}

	public void setP_police(String p_police) {
		this.p_police = p_police;
	}

	public String getP_history() {
		return p_history;
	}

	public void setP_history(String p_history) {
		this.p_history = p_history;
	}

	public String getP_bigo() {
		return p_bigo;
	}

	public void setP_bigo(String p_bigo) {
		this.p_bigo = p_bigo;
	}

	public String getP_date() {
		return p_date;
	}

	public void setP_date(String p_date) {
		this.p_date = p_date;
	}

	@Override
	public String toString() {
		return "PenaltyDTO [p_cost=" + p_cost + ", p_code=" + p_code + ", p_b_no=" + p_b_no + ", p_e_no=" + p_e_no
				+ ", p_e_license=" + p_e_license + ", p_e_name=" + p_e_name + ", p_payment=" + p_payment
				+ ", p_located=" + p_located + ", p_police=" + p_police + ", p_history=" + p_history + ", p_bigo="
				+ p_bigo + ", p_date=" + p_date + "]";
	}

}
