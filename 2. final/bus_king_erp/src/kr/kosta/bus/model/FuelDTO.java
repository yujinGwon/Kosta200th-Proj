package kr.kosta.bus.model;

public class FuelDTO {


	private String f_code,f_b_no,f_b_energy,f_date,f_nametag,f_bigo,f_payment,f_date2;
	private int f_cost,f_charge;
	
	public String getF_code() {
		return f_code;
	}
	public void setF_code(String f_code) {
		this.f_code = f_code;
	}
	public String getF_b_no() {
		return f_b_no;
	}
	public void setF_b_no(String f_b_no) {
		this.f_b_no = f_b_no;
	}
	public String getF_b_energy() {
		return f_b_energy;
	}
	public void setF_b_energy(String f_b_energy) {
		this.f_b_energy = f_b_energy;
	}
	public String getF_date() {
		return f_date;
	}
	public void setF_date(String f_date) {
		this.f_date = f_date;
	}
	public String getF_nametag() {
		return f_nametag;
	}
	public void setF_nametag(String f_nametag) {
		this.f_nametag = f_nametag;
	}
	public String getF_bigo() {
		return f_bigo;
	}
	public void setF_bigo(String f_bigo) {
		this.f_bigo = f_bigo;
	}
	public String getF_payment() {
		return f_payment;
	}
	public void setF_payment(String f_payment) {
		this.f_payment = f_payment;
	}
	public int getF_cost() {
		return f_cost;
	}
	public void setF_cost(int f_cost) {
		this.f_cost = f_cost;
	}
	public int getF_charge() {
		return f_charge;
	}
	public void setF_charge(int f_charge) {
		this.f_charge = f_charge;
	}
	public String getF_date2() {
		return f_date2;
	}
	public void setF_date2(String f_date2) {
		this.f_date2 = f_date2;
	}
	@Override
	public String toString() {
		return "FuelDTO [f_code=" + f_code + ", f_b_no=" + f_b_no + ", f_b_energy=" + f_b_energy + ", f_date=" + f_date
				+ ", f_nametag=" + f_nametag + ", f_bigo=" + f_bigo + ", f_payment=" + f_payment + ", f_date2="
				+ f_date2 + ", f_cost=" + f_cost + ", f_charge=" + f_charge + "]";
	}


	
}
