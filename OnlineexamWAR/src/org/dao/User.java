package org.dao;

public class User 
{
	private String firstname;
	private String lastname;
	private String emailid;
	private String gender;
	private String address;
	private String city;
	private String state;
	private String pin;
	private String insname;
	private String degree;
	private String yop;
	private String username;
	private String password;
	private int userid;
	
	public User() {
		super();
	}

	public User(String firstname, String lastname, String emailid,
			String gender, String address, String city, String state, String pin,
			String insname, String degree, String yop, String username,
			String password) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.emailid = emailid;
		this.gender = gender;
		this.address = address;
		this.city = city;
		this.state = state;
		this.pin = pin;
		this.insname = insname;
		this.degree = degree;
		this.yop = yop;
		this.username = username;
		this.password = password;
		//this.userid = userid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getInsname() {
		return insname;
	}

	public void setInsname(String insname) {
		this.insname = insname;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getYop() {
		return yop;
	}

	public void setYop(String yop) {
		this.yop = yop;
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

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	}

