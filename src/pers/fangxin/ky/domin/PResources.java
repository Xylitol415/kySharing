package pers.fangxin.ky.domin;

public class PResources {
	private int pid;
	private String pcategory;
	private String pinfo;
	private String pimg;
	private String pprice;
	private String pstate;
	private String pphone;
	private String paccount;
	
	
	
	public PResources() {
		super();
	}
	
	
	
	public PResources(String pcategory, String pinfo, String pimg, String pprice, String pstate, String pphone,
			String paccount) {
		super();
		this.pcategory = pcategory;
		this.pinfo = pinfo;
		this.pimg = pimg;
		this.pprice = pprice;
		this.pstate = pstate;
		this.pphone = pphone;
		this.paccount = paccount;
	}



	public PResources(int pid, String pcategory, String pinfo, String pimg, String pprice, String pstate, String pphone,
			String paccount) {
		super();
		this.pid = pid;
		this.pcategory = pcategory;
		this.pinfo = pinfo;
		this.pimg = pimg;
		this.pprice = pprice;
		this.pstate = pstate;
		this.pphone = pphone;
		this.paccount = paccount;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPcategory() {
		return pcategory;
	}
	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}
	public String getPinfo() {
		return pinfo;
	}
	public void setPinfo(String pinfo) {
		this.pinfo = pinfo;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	public String getPprice() {
		return pprice;
	}
	public void setPprice(String pprice) {
		this.pprice = pprice;
	}
	public String getPstate() {
		return pstate;
	}
	public void setPstate(String pstate) {
		this.pstate = pstate;
	}
	public String getPphone() {
		return pphone;
	}
	public void setPphone(String pphone) {
		this.pphone = pphone;
	}
	public String getPaccount() {
		return paccount;
	}
	public void setPaccount(String paccount) {
		this.paccount = paccount;
	}
	
	
}
