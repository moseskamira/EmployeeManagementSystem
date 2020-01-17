package mosesk.ems;
import javax.validation.constraints.NotBlank;

public class LoginRequest {

    @NotBlank
    private String password;
    
    @NotBlank
    private String name;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "LoginRequest [password=" + password + ", name=" + name + "]";
	}
	
	


	

   
}
