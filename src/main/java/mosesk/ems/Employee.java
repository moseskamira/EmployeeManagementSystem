package mosesk.ems;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

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
	
	@Column(name="empSalary", nullable=false)
	Double employeeSalary;
	
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Employee(Long employeeId, String employeeFirstName, String employeeLastName, String employeeOtherName,
			String employeeGender, String employeeDOB, Double employeeSalary) {
		super();
		this.employeeId = employeeId;
		this.employeeFirstName = employeeFirstName;
		this.employeeLastName = employeeLastName;
		this.employeeOtherName = employeeOtherName;
		this.employeeGender = employeeGender;
		this.employeeDOB = employeeDOB;
		this.employeeSalary = employeeSalary;
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
	public Double getEmployeeSalary() {
		return employeeSalary;
	}
	public void setEmployeeSalary(Double employeeSalary) {
		this.employeeSalary = employeeSalary;
	}

	@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", employeeFirstName=" + employeeFirstName + ", employeeLastName="
				+ employeeLastName + ", employeeOtherName=" + employeeOtherName + ", employeeGender=" + employeeGender
				+ ", employeeDOB=" + employeeDOB + ", employeeSalary=" + employeeSalary + "]";
	}

}
