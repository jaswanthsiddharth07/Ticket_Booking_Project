package tkt_booking;

import java.time.LocalDate;
import java.time.LocalTime;

public class Moviesinfo {
	private int movieId;
	private String movieTitle;
	private LocalTime duration;
	private String rating;
	private LocalDate releaseDate;
	private String audioLanguage;
	
	
	public Moviesinfo() {
		super();
	}
	
	public Moviesinfo(int movieId, String movieTitle, LocalTime duration, String rating, LocalDate releaseDate,
			String audioLanguage) {
		super();
		this.movieId = movieId;
		this.movieTitle = movieTitle;
		this.duration = duration;
		this.rating = rating;
		this.releaseDate = releaseDate;
		this.audioLanguage = audioLanguage;
	}
	
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public LocalTime getDuration() {
		return duration;
	}
	public void setDuration(LocalTime duration) {
		this.duration = duration;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public LocalDate getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(LocalDate releaseDate) {
		this.releaseDate = releaseDate;
	}
	public String getAudioLanguage() {
		return audioLanguage;
	}
	public void setAudioLanguage(String audioLanguage) {
		this.audioLanguage = audioLanguage;
	}
	
	

}
