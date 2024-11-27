package tkt_booking;

public class Paymentmethodinfo {
	private int paymentMethodId;
	private String paymentMethodName;
	
	public Paymentmethodinfo() {
		super();
	}

	public Paymentmethodinfo(int paymentMethodId, String paymentMethodName) {
		super();
		this.paymentMethodId = paymentMethodId;
		this.paymentMethodName = paymentMethodName;
	}
	
	public int getPaymentMethodId() {
		return paymentMethodId;
	}
	public void setPaymentMethodId(int paymentMethodId) {
		this.paymentMethodId = paymentMethodId;
	}
	public String getPaymentMethodName() {
		return paymentMethodName;
	}
	public void setPaymentMethodName(String paymentMethodName) {
		this.paymentMethodName = paymentMethodName;
	}
	

}
