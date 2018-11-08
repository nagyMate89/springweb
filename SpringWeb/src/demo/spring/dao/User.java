package demo.spring.dao;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import demo.spring.validation.ValidEmail;

public class User {

	@NotBlank(message="Username cannot be blank")
	@Size(min=5, max=15, message="Username must be 5 and 15 characters long")
	@Pattern(regexp="^\\w{5,}$", message="Invalid username format")
	private String name;
	
	
	@NotBlank(message="Password cannot be blank")
	@Size(min=8, max=25, message="Password must be between 8 and 25 characters long")
	@Pattern(regexp="^\\S+$", message="Invalid password format.")
	private String password;
	
	@NotNull
	@ValidEmail(min=6)
	private String email;
	
	private String authority;
	private boolean enabled=false;
	private String confirmPass;
	
	
	
	
	public String getConfirmPass() {
		return confirmPass;
	}

	public void setConfirmPass(String confirmPass) {
		this.confirmPass = confirmPass;
	}

	public User() {
		
	}
	
	public User(String name, String password, String email, String authority, boolean enabled) {
		this.name = name;
		this.password = password;
		this.authority = authority;
		this.enabled = enabled;
		this.email=email;
	}
	
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setName(String name) {
		this.name = name;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getName() {
		return name;
	}
	public String getPassword() {
		return password;
	}
	public String getAuthority() {
		return authority;
	}
	public boolean isEnabled() {
		return enabled;
	}
	
	
}
