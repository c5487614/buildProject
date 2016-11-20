package protect.build.model;

public class Monitor {
	private Integer biuldId;
	public Integer getBiuldId() {
		return biuldId;
	}
	public void setBiuldId(Integer biuldId) {
		this.biuldId = biuldId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getProtectLevel() {
		return protectLevel;
	}
	public void setProtectLevel(String protectLevel) {
		this.protectLevel = protectLevel;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	public String getTemprature() {
		return temprature;
	}
	public void setTemprature(String temprature) {
		this.temprature = temprature;
	}
	public String getContactor() {
		return contactor;
	}
	public void setContactor(String contactor) {
		this.contactor = contactor;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	private String name;
	private String district;
	private String protectLevel;
	private String updateDate;
	private String temprature;
	private String contactor;
	private String phone;
	
}
