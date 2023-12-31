package model;


import java.text.SimpleDateFormat;
import java.util.Date;

public class Comment3 {
	private int ser;
	private int num;
	private String content;
	private String nicname;
	private Date regdate;
	private SimpleDateFormat sd= new SimpleDateFormat("yyyy-MM-dd");
	
	
	public String getNicname() {
		return nicname;
	}
	public void setNicname(String nicname) {
		this.nicname = nicname;
	}
	public String getRegdate2() {
		
		return sd.format(regdate);
	}
	public int getSer() {
		return ser;
	}
	public void setSer(int ser) {
		this.ser = ser;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "Comment3 [ser=" + ser + ", num=" + num + ", content=" + content + ", regdate=" + regdate + "]";
	}
	
	public String toHtml() {
		return "<p>"+ content + "<span class='w3-right'>" + sd.format(regdate) + "</span></p>";
	}
	
	
	
	
	
	

}
