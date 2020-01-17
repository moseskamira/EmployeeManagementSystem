package mosesk.ems;

import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

public class EmpRegisterRequest {
	Long employeeId;
	
	@NotBlank
	String employeeFirstName;
	
	@NotBlank
	String employeeLastName;
	
	String employeeOtherName;
	
	String employeeGender;
	
	@NotBlank
	String employeeDOB;
	
	String employeeJobType;
	
	int employeeContractDuration;
	
	Double employeeSalary;

	@Transient
	MultipartFile employeePhoto;
	
	@Email
	@NotBlank
    private String employeeEmail;
	
	DepartmentDropDown employeeDeptName;

	
	
	public Long getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(Long employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmployeeFirstName() {
		return employeeFirstName;
	}

	public void setEmployeeFirstName(String employeeFirstName) {
		this.employeeFirstName = employeeFirstName;
	}

	public String getEmployeeLastName() {
		return employeeLastName;
	}

	public void setEmployeeLastName(String employeeLastName) {
		this.employeeLastName = employeeLastName;
	}

	public String getEmployeeOtherName() {
		return employeeOtherName;
	}

	public void setEmployeeOtherName(String employeeOtherName) {
		this.employeeOtherName = employeeOtherName;
	}

	public String getEmployeeGender() {
		return employeeGender;
	}

	public void setEmployeeGender(String employeeGender) {
		this.employeeGender = employeeGender;
	}

	public String getEmployeeDOB() {
		return employeeDOB;
	}

	public void setEmployeeDOB(String employeeDOB) {
		this.employeeDOB = employeeDOB;
	}

	

	public DepartmentDropDown getEmployeeDeptName() {
		return employeeDeptName;
	}

	public void setEmployeeDeptName(DepartmentDropDown employeeDeptName) {
		this.employeeDeptName = employeeDeptName;
	}

	public String getEmployeeJobType() {
		return employeeJobType;
	}

	public void setEmployeeJobType(String employeeJobType) {
		this.employeeJobType = employeeJobType;
	}

	public int getEmployeeContractDuration() {
		return employeeContractDuration;
	}

	public void setEmployeeContractDuration(int employeeContractDuration) {
		this.employeeContractDuration = employeeContractDuration;
	}

	public Double getEmployeeSalary() {
		return employeeSalary;
	}

	public void setEmployeeSalary(Double employeeSalary) {
		this.employeeSalary = employeeSalary;
	}
	
	public MultipartFile getEmployeePhoto() {
		return employeePhoto;
	}

	public void setEmployeePhoto(MultipartFile employeePhoto) {
		this.employeePhoto = employeePhoto;
	}
	
	public String getEmployeeEmail() {
		return employeeEmail;
	}

	public void setEmployeeEmail(String employeeEmail) {
		this.employeeEmail = employeeEmail;
	}

	@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", employeeFirstName=" + employeeFirstName + ", employeeLastName="
				+ employeeLastName + ", employeeOtherName=" + employeeOtherName + ", employeeGender=" + employeeGender
				+ ", employeeDOB=" + employeeDOB + ", employeeJobType=" + employeeJobType
				+ ", employeeContractDuration=" + employeeContractDuration + ", employeeSalary=" + employeeSalary
				+ ", employeePhoto=" + employeePhoto + ", employeeEmail=" + employeeEmail + ", employeeDeptName="
				+ employeeDeptName + "]";
	}
}
