package pers.fangxin.ky.domin;

import java.util.Date;

/**
 * 这是经验贴封装的bean
 * @author Administrator
 *
 */
public class Note {
	private int nid;
	private String ncategory;
	private String ntitle;
	private String ncontent;
	private Date ntime;
	private int nuid;
	private String nuname;
	private String nschool;
	private String numajor;
	private int nscore;
	
	
	
	public Note() {
		super();
	}
	
	public Note(int nid, String ncategory, String ntitle, String ncontent, Date ntime, String nuname,
			String nschool, String numajor, int nscore) {
		super();
		this.nid = nid;
		this.ncategory = ncategory;
		this.ntitle = ntitle;
		this.ncontent = ncontent;
		this.ntime = ntime;	
		this.nuname = nuname;
		this.nschool = nschool;
		this.numajor = numajor;
		this.nscore = nscore;
	}



	public Note(String ncategory, String ntitle, String ncontent, Date ntime, String nuname, String nschool,
			String numajor, int nscore) {
		super();
		this.ncategory = ncategory;
		this.ntitle = ntitle;
		this.ncontent = ncontent;
		this.ntime = ntime;
		this.nuname = nuname;
		this.nschool = nschool;
		this.numajor = numajor;
		this.nscore = nscore;
	}
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getNcategory() {
		return ncategory;
	}
	public void setNcategory(String ncategory) {
		this.ncategory = ncategory;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public String getNcontent() {
		return ncontent;
	}
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	public Date getNtime() {
		return ntime;
	}
	public void setNtime(Date ntime) {
		this.ntime = ntime;
	}
	public int getNuid() {
		return nuid;
	}
	public void setNuid(int nuid) {
		this.nuid = nuid;
	}
	public String getNuname() {
		return nuname;
	}
	public void setNuname(String nuname) {
		this.nuname = nuname;
	}
	public String getNschool() {
		return nschool;
	}
	public void setNschool(String nschool) {
		this.nschool = nschool;
	}
	public String getNumajor() {
		return numajor;
	}
	public void setNumajor(String numajor) {
		this.numajor = numajor;
	}
	public int getNscore() {
		return nscore;
	}
	public void setNscore(int nscore) {
		this.nscore = nscore;
	}

	@Override
	public String toString() {
		return "Note [ncategory=" + ncategory + ", ntitle=" + ntitle + ", ncontent=" + ncontent + ", ntime=" + ntime
				+ ", nuname=" + nuname + ", nschool=" + nschool + ", numajor=" + numajor + ", nscore=" + nscore + "]";
	}
	
	
}
