package model;

public class Complaint {

	private int cid,mid,h_no;
	private String subject,cdate,description,complaint_status;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getH_no() {
		return h_no;
	}
	public void setH_no(int h_no) {
		this.h_no = h_no;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	public String getComplaint_status() {
		return complaint_status;
	}
	public void setComplaint_status(String complaint_status) {
		this.complaint_status = complaint_status;
	}
	@Override
	public String toString() {
		return "Complaint [cid=" + cid + ", mid=" + mid + ", h_no=" + h_no + ", subject=" + subject + ", cdate=" + cdate
				+ ", description=" + description + ", complaint_status=" + complaint_status + "]";
	}
	
	
	
	
	
}
