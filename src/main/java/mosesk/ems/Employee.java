package mosesk.ems;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="empTable")
public class Employee {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="empID", unique=true)
	Long employeeId;
	
	@Column(name="empFirstName", nullable=false)
	String employeeFirstName;
	
	@Column(name="empLastName", nullable=false)
	String employeeLastName;
	
	@Column(name="empOtherName")
	String employeeOtherName;
	
	@Column(name="empGender", nullable=false)
	String employeeGender;
	
	@Column(name="empDOB", nullable=false)
	String employeeDOB;
	
	@Column(name="empJobType", nullable=false)
	String employeeJobType;
	@Column(name="empContDur", nullable=false)
	int employeeContractDuration;
	
	@Column(name="empSalary", nullable=false)
	Double employeeSalary;
	
	@Column(name="empPhoto")
	@Transient
	MultipartFile employeePhoto;
	
	@Email
    @Column(nullable = false)
    private String employeeEmail;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="dept_id")
	DepartmentDropDown employeeDeptName;
	
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Employee(Long employeeId, String employeeFirstName, String employeeLastName, String employeeOtherName,
			String employeeGender, String employeeDOB, String employeeJobType,
			int employeeContractDuration, Double employeeSalary, MultipartFile employeePhoto, String email, DepartmentDropDown employeeDeptName) {
		super();
		this.employeeId = employeeId;
		this.employeeFirstName = employeeFirstName;
		this.employeeLastName = employeeLastName;
		this.employeeOtherName = employeeOtherName;
		this.employeeGender = employeeGender;
		this.employeeDOB = employeeDOB;
		this.employeeDeptName = employeeDeptName;
		this.employeeJobType = employeeJobType;
		this.employeeContractDuration = employeeContractDuration;
		this.employeeSalary = employeeSalary;
		this.employeePhoto = employeePhoto;
		this.employeeEmail = email;
	}
	
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
