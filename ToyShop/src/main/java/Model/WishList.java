package Model;

public class WishList {
	private int wid, cid, pid;

	
	public int getWid() {
		return wid;
	}

	public void setWid(int wid) {
		this.wid = wid;
	}


	public int getCid() {
		return cid;
	}


	public void setCid(int cid) {
		this.cid = cid;
	}


	public int getPid() {
		return pid;
	}


	public void setPid(int pid) {
		this.pid = pid;
	}


	@Override
	public String toString() {
		return "WhishList [wid=" + wid + ", cid=" + cid + ", pid=" + pid + "]";
	}
	
}
