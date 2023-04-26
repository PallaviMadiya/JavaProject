package model;

public class ComplaintReply {

	private int cr_id,cid;
	private String c_reply,reply_date;
	
	public int getCr_id() {
		return cr_id;
	}
	public void setCr_id(int cr_id) {
		this.cr_id = cr_id;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getC_reply() {
		return c_reply;
	}
	public void setC_reply(String c_reply) {
		this.c_reply = c_reply;
	}
	public String getReply_date() {
		return reply_date;
	}
	public void setReply_date(String reply_date) {
		this.reply_date = reply_date;
	}
	
	@Override
	public String toString() {
		return "ComplaintReply [cr_id=" + cr_id + ", cid=" + cid + ", c_reply=" + c_reply + ", reply_date=" + reply_date
				+ "]";
	}
}
