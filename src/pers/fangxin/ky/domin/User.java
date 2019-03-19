package pers.fangxin.ky.domin;

public class User {
	private int uid;
	private String uname;//�û������˺�
    private String upassword;//����
    private String ugender;//�л�Ů
    private String uphone;//�ֻ���
    private String uemail;//����
    private String ubenke;//����ѧУ
    private String ubaokao;//����ѧУ
    private String umajor;//רҵ
    private String uyear;//�������
    private String urole; //�û����
//    private String status;//����״̬��Y�����N����δ����
//    private String code;//�����루Ҫ��Ψһ��
    
        		
	public User() {
	super();
	}
	
	public User(String uname, String upassword) {
		super();
		this.uname = uname;
		this.upassword = upassword;
	}

	public User(String uname, String upassword, String ugender, String uphone, String uemail, String ubenke, String ubaokao,
		String umajor, String uyear) {
		super();
		this.uname = uname;
		this.upassword = upassword;
		this.ugender = ugender;
		this.uphone = uphone;
		this.uemail = uemail;
		this.ubenke = ubenke;
		this.ubaokao = ubaokao;
		this.umajor = umajor;
		this.uyear = uyear;
	}

	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUgender() {
		return ugender;
	}
	public void setUgender(String ugender) {
		this.ugender = ugender;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUbenke() {
		return ubenke;
	}
	public void setUbenke(String ubenke) {
		this.ubenke = ubenke;
	}
	public String getUbaokao() {
		return ubaokao;
	}
	public void setUbaokao(String ubaokao) {
		this.ubaokao = ubaokao;
	}
	public String getUmajor() {
		return umajor;
	}
	public void setUmajor(String umajor) {
		this.umajor = umajor;
	}
	public String getUyear() {
		return uyear;
	}
	public void setUyear(String uyear) {
		this.uyear = uyear;
	}
	


	public String getUrole() {
		return urole;
	}

	public void setUrole(String urole) {
		this.urole = urole;
	}

	@Override
	public String toString() {
		return "User [uname=" + uname + ", upassword=" + upassword + ", ugender=" + ugender + ", uphone=" + uphone
				+ ", uemail=" + uemail + ", ubenke=" + ubenke + ", ubaokao=" + ubaokao + ", umajor=" + umajor
				+ ", uyear=" + uyear + "]";
	}
    
    
}
