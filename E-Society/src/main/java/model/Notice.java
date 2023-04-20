package model;

public class Notice {
	private int nid;
	private String n_date, n_subject, n_message;
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getN_date() {
		return n_date;
	}
	public void setN_date(String n_date) {
		this.n_date = n_date;
	}
	public String getN_subject() {
		return n_subject;
	}
	public void setN_subject(String n_subject) {
		this.n_subject = n_subject;
	}
	public String getN_message() {
		return n_message;
	}
	public void setN_message(String n_message) {
		this.n_message = n_message;
	}
	@Override
	public String toString() {
		return "Notice [nid=" + nid + ", n_date=" + n_date + ", n_subject=" + n_subject + ", n_message=" + n_message
				+ "]";
	}
	
}
