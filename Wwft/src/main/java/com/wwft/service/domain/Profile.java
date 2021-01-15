package com.wwft.service.domain;

public class Profile {
	
	private int profileno;
	private int treeno;
	private String profilestate;
	private String profilename;
	private String phone;
	private String familyrelations;	
	private String profileimage;	
	private String birthday;
	private String address;
	
	
	public int getProfileno() {
		return profileno;
	}
	public void setProfileno(int profileno) {
		this.profileno = profileno;
	}
	public int getTreeno() {
		return treeno;
	}
	public void setTreeno(int treeno) {
		this.treeno = treeno;
	}
	public String getProfilestate() {
		return profilestate;
	}
	public void setProfilestate(String profilestate) {
		this.profilestate = profilestate;
	}
	public String getProfilename() {
		return profilename;
	}
	public void setProfilename(String profilename) {
		this.profilename = profilename;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFamilyrelations() {
		return familyrelations;
	}
	public void setFamilyrelations(String familyrelations) {
		this.familyrelations = familyrelations;
	}
	public String getProfileimage() {
		return profileimage;
	}
	public void setProfileimage(String profileimage) {
		this.profileimage = profileimage;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Profile [profileno=");
		builder.append(profileno);
		builder.append(", treeno=");
		builder.append(treeno);
		builder.append(", profilestate=");
		builder.append(profilestate);
		builder.append(", profilename=");
		builder.append(profilename);
		builder.append(", phone=");
		builder.append(phone);
		builder.append(", familyrelations=");
		builder.append(familyrelations);
		builder.append(", profileimage=");
		builder.append(profileimage);
		builder.append(", birthday=");
		builder.append(birthday);
		builder.append(", address=");
		builder.append(address);
		builder.append("]");
		return builder.toString();
	}

}


