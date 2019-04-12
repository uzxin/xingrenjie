package client.domain;

import java.util.List;

public class Category_2 {
	private long cid;
	private String cname;
	private String cid_1;
	
	List<Category_3> list3;
	public List<Category_3> getList3() {
		return list3;
	}
	public void setList3(List<Category_3> list3) {
		this.list3 = list3;
	}
	public long getCid() {
		return cid;
	}
	public void setCid(long cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCid_1() {
		return cid_1;
	}
	public void setCid_1(String cid_1) {
		this.cid_1 = cid_1;
	}
}
