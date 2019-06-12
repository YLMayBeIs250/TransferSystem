package com.mss.models;

public class Admin {
	private int ckid;
	private String ckname;
	private String ckpassword;
	private String cktelephone;
	private String ckpostcode;
	private String ckaddress;

	public int getCkid() {
		return ckid;
	}

	public void setCkid(int ckid) {
		this.ckid = ckid;
	}

	public String getCkname() {
		return ckname;
	}

	public void setCkname(String ckname) {
		this.ckname = ckname;
	}

	public String getCkpassword() {
		return ckpassword;
	}

	public void setCkpassword(String ckpassword) {
		this.ckpassword = ckpassword;
	}

	public String getCktelephone() {
		return cktelephone;
	}

	public void setCktelephone(String cktelephone) {
		this.cktelephone = cktelephone;
	}

	public String getCkpostcode() {
		return ckpostcode;
	}

	public void setCkpostcode(String ckpostcode) {
		this.ckpostcode = ckpostcode;
	}

	public String getCkaddress() {
		return ckaddress;
	}

	public void setCkaddress(String ckaddress) {
		this.ckaddress = ckaddress;
	}

	@Override
	public String toString() {
		return "Admin [ckid=" + ckid + ", ckname=" + ckname + ", ckpassword="
				+ ckpassword + ", cktelephone=" + cktelephone
				+", ckpostcode=" + ckpostcode +", ckaddress=" + ckaddress+"]";
	}

}

