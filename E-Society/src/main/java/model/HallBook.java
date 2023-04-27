package model;

public class HallBook {
	private int mid, bid, b_hour;
	private String b_subject, b_date, b_time;
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
	public int getB_hour() {
		return b_hour;
	}
	public void setB_hour(int b_hour) {
		this.b_hour = b_hour;
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
	public String getB_time() {
		return b_time;
	}
	public void setB_time(String b_time) {
		this.b_time = b_time;
	}
	@Override
	public String toString() {
		return "HallBooking [mid=" + mid + ", bid=" + bid + ", b_hour=" + b_hour + ", b_subject=" + b_subject
				+ ", b_date=" + b_date + ", b_time=" + b_time + "]";
	}
	
	
}
