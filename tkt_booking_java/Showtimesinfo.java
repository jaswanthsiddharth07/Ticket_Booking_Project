package tkt_booking;

import java.time.LocalTime;

public class Showtimesinfo {
	private int showTimeId;
	private int screenId;
	private LocalTime showTime;
	private boolean isActive;
	private int currentMovieId;
	
	
	public Showtimesinfo() {
		super();
	}

	public Showtimesinfo(int showTimeId, int screenId, LocalTime showTime, boolean isActive, int currentMovieId) {
		super();
		this.showTimeId = showTimeId;
		this.screenId = screenId;
		this.showTime = showTime;
		this.isActive = isActive;
		this.currentMovieId = currentMovieId;
	}
	
	public int getShowTimeId() {
		return showTimeId;
	}
	public void setShowTimeId(int showTimeId) {
		this.showTimeId = showTimeId;
	}
	public int getScreenId() {
		return screenId;
	}
	public void setScreenId(int screenId) {
		this.screenId = screenId;
	}
	public LocalTime getShowTime() {
		return showTime;
	}
	public void setShowTime(LocalTime showTime) {
		this.showTime = showTime;
	}
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	public int getCurrentMovieId() {
		return currentMovieId;
	}
	public void setCurrentMovieId(int currentMovieId) {
		this.currentMovieId = currentMovieId;
	}
	

}
