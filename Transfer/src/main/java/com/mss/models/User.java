package com.mss.models;

public class User {
	private int id;
	private String useremail;
	private String username;
	private String password;
	private String telephone;
	private String wechat;
	private String upload_picture;
	private int account;
	private String city;
	private String location;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getWechat() {
		return wechat;
	}

	public void setWechat(String wechat) {
		this.wechat = wechat;
	}

	public String getUpload_picture() {
		return upload_picture;
	}

	public void setUpload_picture(String upload_picture) {
		this.upload_picture = upload_picture;
	}

	public int getAccount() {
		return account;
	}

	public void setAccount(int account) {
		this.account = account;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	@Override
	public String toString() {
		return "User [useremail=" + useremail + ", username=" + username + ", password="
				+ password + ", city=" + city + ", location=" + location + ", telephone="
				+ telephone + ",wechat="+wechat+",upload_picture="+upload_picture+",account="+account+"]";
	}
}
