package tkt_booking;

import java.time.LocalDate;

public class Transactioninfo {
	private int txnId;
	private LocalDate txnDate;
	private String bookingNumber;
	private double txnAmount;
	private String txnStatus;
	private int paymentMethodId;
	
	
	public Transactioninfo() {
		super();
	}

	public Transactioninfo(int txnId, LocalDate txnDate, String bookingNumber, double txnAmount, String txnStatus,
			int paymentMethodId) {
		super();
		this.txnId = txnId;
		this.txnDate = txnDate;
		this.bookingNumber = bookingNumber;
		this.txnAmount = txnAmount;
		this.txnStatus = txnStatus;
		this.paymentMethodId = paymentMethodId;
	}
	
	public int getTxnId() {
		return txnId;
	}
	public void setTxnId(int txnId) {
		this.txnId = txnId;
	}
	public LocalDate getTxnDate() {
		return txnDate;
	}
	public void setTxnDate(LocalDate txnDate) {
		this.txnDate = txnDate;
	}
	public String getBookingNumber() {
		return bookingNumber;
	}
	public void setBookingNumber(String bookingNumber) {
		this.bookingNumber = bookingNumber;
	}
	public double getTxnAmount() {
		return txnAmount;
	}
	public void setTxnAmount(double txnAmount) {
		this.txnAmount = txnAmount;
	}
	public String getTxnStatus() {
		return txnStatus;
	}
	public void setTxnStatus(String txnStatus) {
		this.txnStatus = txnStatus;
	}
	public int getPaymentMethodId() {
		return paymentMethodId;
	}
	public void setPaymentMethodId(int paymentMethodId) {
		this.paymentMethodId = paymentMethodId;
	}
	
	

}
