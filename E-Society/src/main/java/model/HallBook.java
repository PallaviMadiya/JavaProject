package model;

public class HallBook {
	private int mid, bid;
	private String b_subject, b_date,bpayment_status;
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	
	public String getB_subject() {
		return b_subject;
	}
	public void setB_subject(String b_subject) {
		this.b_subject = b_subject;
	}
	public String getB_date() {
		return b_date;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	
	public String getBpayment_status() {
		return bpayment_status;
	}
	public void setBpayment_status(String bpayment_status) {
		this.bpayment_status = bpayment_status;
	}
	@Override
	public String toString() {
		return "HallBook [mid=" + mid + ", bid=" + bid + ", b_subject=" + b_subject + ", b_date=" + b_date
				+ ", bpayment_status=" + bpayment_status + "]";
	}
	
	
	
	
	
}
