package demo.spring.dao;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import demo.spring.validation.ValidEmail;

public class Offer {

	private int id;
	
	
	@Size(min=5, max=50, message="Name must be 5 and 50 characters long")
	private String name;
	
	@NotNull
	@ValidEmail(min=6)
	private String email;
	
	@Size(min=20, max=255, message="Inquiry text must be between 20 and 255 characters.")
	private String enquiry;
	
	public Offer() {
		
	}

	
	public Offer(String name, String email, String enquiry) {

		this.name = name;
		this.email = email;
		this.enquiry = enquiry;
	}

	
	
	public Offer(int id, String name, String email, String enquiry) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.enquiry = enquiry;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEnquiry() {
		return enquiry;
	}

	public void setEnquiry(String enquiry) {
		this.enquiry = enquiry;
	}

	@Override
	public String toString() {
		return "Offers [id=" + id + ", name=" + name + ", email=" + email + ", enquiry=" + enquiry + "]";
	}

}
