package pers.fangxin.ky.domin;

import java.util.Date;

/**
 * 这是电子资料封装的bean
 * @author Administrator
 *
 */
public class EResources {
	private int eid;
	private String etitle;
	private String ecategory;
	private String elink;
	private Date etime;
	private int euid;
	private String euname;
	
	
	
	public EResources() {
		super();
	}
	
	public EResources(String etitle, String ecategory, String elink, Date etime, String euname) {
		super();
		this.etitle = etitle;
		this.ecategory = ecategory;
		this.elink = elink;
		this.etime = etime;
		this.euname = euname;
	}
	
	
	public EResources(int eid, String etitle, String ecategory, String elink, Date etime, String euname) {
		super();
		this.eid = eid;
		this.etitle = etitle;
		this.ecategory = ecategory;
		this.elink = elink;
		this.etime = etime;
		this.euname = euname;
	}

	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEtitle() {
		return etitle;
	}
	public void setEtitle(String etitle) {
		this.etitle = etitle;
	}
	public String getEcategory() {
		return ecategory;
	}
	public void setEcategory(String ecategory) {
		this.ecategory = ecategory;
	}
	public String getElink() {
		return elink;
	}
	public void setElink(String elink) {
		this.elink = elink;
	}
	public Date getEtime() {
		return etime;
	}
	public void setEtime(Date etime) {
		this.etime = etime;
	}
	public int getEuid() {
		return euid;
	}
	public void setEuid(int euid) {
		this.euid = euid;
	}
	public String getEuname() {
		return euname;
	}
	public void setEuname(String euname) {
		this.euname = euname;
	}
	
	
}
