package tkt_booking;

public class Screensinfo {
	private int screenId;
	private String screenName;
	private String location;
	private String city;
	private String state;
	private String country;
	private int seatingCapacity;
	
	public Screensinfo() {
		super();
	}
	
	public Screensinfo(int screenId, String screenName, String location, String city, String state, String country,
			int seatingCapacity) {
		super();
		this.screenId = screenId;
		this.screenName = screenName;
		this.location = location;
		this.city = city;
		this.state = state;
		this.country = country;
		this.seatingCapacity = seatingCapacity;
	}
	
	public int getScreenId() {
		return screenId;
	}
	public void setScreenId(int screenId) {
		this.screenId = screenId;
	}
	public String getScreenName() {
		return screenName;
	}
	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
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
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getSeatingCapacity() {
		return seatingCapacity;
	}
	public void setSeatingCapacity(int seatingCapacity) {
		this.seatingCapacity = seatingCapacity;
	}
	
	

}
