package tkt_booking;

public class Bookinginfo {
	private int bookingId;
	private String bookingNumber;
	private int userId;
	private int movieId;
	private int showTimeId;
	private int screenId;
	private int seatId;
	private int bookingStatusId;
	
	public Bookinginfo() {
		super();
	}

	public Bookinginfo(int bookingId, String bookingNumber, int userId, int movieId, int showTimeId, int screenId,
			int seatId, int bookingStatusId) {
		super();
		this.bookingId = bookingId;
		this.bookingNumber = bookingNumber;
		this.userId = userId;
		this.movieId = movieId;
		this.showTimeId = showTimeId;
		this.screenId = screenId;
		this.seatId = seatId;
		this.bookingStatusId = bookingStatusId;
	}
	
	public int getBookingId() {
		return bookingId;
	}
	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}
	public String getBookingNumber() {
		return bookingNumber;
	}
	public void setBookingNumber(String bookingNumber) {
		this.bookingNumber = bookingNumber;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
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
	public int getSeatId() {
		return seatId;
	}
	public void setSeatId(int seatId) {
		this.seatId = seatId;
	}
	public int getBookingStatusId() {
		return bookingStatusId;
	}
	public void setBookingStatusId(int bookingStatusId) {
		this.bookingStatusId = bookingStatusId;
	}
	
	

}
