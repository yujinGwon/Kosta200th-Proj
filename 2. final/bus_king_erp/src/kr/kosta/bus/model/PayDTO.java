package kr.kosta.bus.model;

import java.util.Date;

public class PayDTO {
	
	private String pay_code, pay_e_no, pay_e_name, pay_e_dname, pay_e_position,
			pay_nametag, pay_bigo, pay_day;
	
	private int pay_year, pay_month, pay_chul, pay_work, pay_work_t,
				pay_p, pay_p_t, pay_bob, pay_car, pay_m, pay_tax, pay_total;
	
	
	public PayDTO() {}

	public String getPay_code() {
		return pay_code;
	}

	public void setPay_code(String pay_code) {
		this.pay_code = pay_code;
	}

	public String getPay_e_no() {
		return pay_e_no;
	}

	public void setPay_e_no(String pay_e_no) {
		this.pay_e_no = pay_e_no;
	}

	public String getPay_e_name() {
		return pay_e_name;
	}

	public void setPay_e_name(String pay_e_name) {
		this.pay_e_name = pay_e_name;
	}

	public String getPay_e_dname() {
		return pay_e_dname;
	}

	public void setPay_e_dname(String pay_e_dname) {
		this.pay_e_dname = pay_e_dname;
	}

	public String getPay_e_position() {
		return pay_e_position;
	}

	public void setPay_e_position(String pay_e_position) {
		this.pay_e_position = pay_e_position;
	}

	public String getPay_nametag() {
		return pay_nametag;
	}

	public void setPay_nametag(String pay_nametag) {
		this.pay_nametag = pay_nametag;
	}

	public String getPay_bigo() {
		return pay_bigo;
	}

	public void setPay_bigo(String pay_bigo) {
		this.pay_bigo = pay_bigo;
	}

	public int getPay_year() {
		return pay_year;
	}

	public void setPay_year(int pay_year) {
		this.pay_year = pay_year;
	}

	public int getPay_month() {
		return pay_month;
	}

	public void setPay_month(int pay_month) {
		this.pay_month = pay_month;
	}

	public int getPay_chul() {
		return pay_chul;
	}

	public void setPay_chul(int pay_chul) {
		this.pay_chul = pay_chul;
	}

	public int getPay_work() {
		return pay_work;
	}

	public void setPay_work(int pay_work) {
		this.pay_work = pay_work;
	}

	public int getPay_work_t() {
		return pay_work_t;
	}

	public void setPay_work_t(int pay_work_t) {
		this.pay_work_t = pay_work_t;
	}

	public int getPay_p() {
		return pay_p;
	}

	public void setPay_p(int pay_p) {
		this.pay_p = pay_p;
	}

	public int getPay_p_t() {
		return pay_p_t;
	}

	public void setPay_p_t(int pay_p_t) {
		this.pay_p_t = pay_p_t;
	}

	public int getPay_bob() {
		return pay_bob;
	}

	public void setPay_bob(int pay_bob) {
		this.pay_bob = pay_bob;
	}

	public int getPay_car() {
		return pay_car;
	}

	public void setPay_car(int pay_car) {
		this.pay_car = pay_car;
	}

	public int getPay_m() {
		return pay_m;
	}

	public void setPay_m(int pay_m) {
		this.pay_m = pay_m;
	}

	public int getPay_tax() {
		return pay_tax;
	}

	public void setPay_tax(int pay_tax) {
		this.pay_tax = pay_tax;
	}

	public int getPay_total() {
		return pay_total;
	}

	public void setPay_total(int pay_total) {
		this.pay_total = pay_total;
	}

	public String getPay_day() {
		return pay_day;
	}

	public void setPay_day(String pay_day) {
		this.pay_day = pay_day;
	}

	public PayDTO(String pay_code, String pay_e_no, String pay_e_name, String pay_e_dname, String pay_e_position,
			String pay_nametag, String pay_bigo, String pay_day, int pay_year, int pay_month, int pay_chul,
			int pay_work, int pay_work_t, int pay_p, int pay_p_t, int pay_bob, int pay_car, int pay_m, int pay_tax,
			int pay_total) {
		super();
		this.pay_code = pay_code;
		this.pay_e_no = pay_e_no;
		this.pay_e_name = pay_e_name;
		this.pay_e_dname = pay_e_dname;
		this.pay_e_position = pay_e_position;
		this.pay_nametag = pay_nametag;
		this.pay_bigo = pay_bigo;
		this.pay_day = pay_day;
		this.pay_year = pay_year;
		this.pay_month = pay_month;
		this.pay_chul = pay_chul;
		this.pay_work = pay_work;
		this.pay_work_t = pay_work_t;
		this.pay_p = pay_p;
		this.pay_p_t = pay_p_t;
		this.pay_bob = pay_bob;
		this.pay_car = pay_car;
		this.pay_m = pay_m;
		this.pay_tax = pay_tax;
		this.pay_total = pay_total;
	}
	
}
