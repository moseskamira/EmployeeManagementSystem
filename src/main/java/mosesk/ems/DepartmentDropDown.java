package mosesk.ems;

import java.util.List;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name="deptTable")
public class DepartmentDropDown {
	@Id
	@Column(name="dept_id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int deptId;
	
	@NotBlank
	@Column(name="Name")
	private String deptName;
	
	@Column(name="Head")
	private String deptHead;
	
	@Column(name="Floor")
	private String deptLocation;
	
	@OneToMany(cascade = CascadeType.ALL,mappedBy = "employeeDeptName", fetch = FetchType.LAZY)
	List<Employee> employees; 
	
	public DepartmentDropDown() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public DepartmentDropDown(int deptId, String deptName, String deptHead, String deptLocation,
			List<Employee> employees) {
		super();
		this.deptId = deptId;
		this.deptName = deptName;
		this.deptHead = deptHead;
		this.deptLocation = deptLocation;
		this.employees = employees;
	}



	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	
	
	public String getDeptHead() {
		return deptHead;
	}

	public void setDeptHead(String deptHead) {
		this.deptHead = deptHead;
	}

	public String getDeptLocation() {
		return deptLocation;
	}

	public void setDeptLocation(String deptLocation) {
		this.deptLocation = deptLocation;
	}

	public List<Employee> getEmployees() {
		return employees;
	}



	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}

	@Override
	public String toString() {
		return "DepartmentDropDown [deptId=" + deptId + ", deptName=" + deptName + ", deptHead=" + deptHead
				+ ", deptLocation=" + deptLocation + ", employees=" + employees + "]";
	}
	

}
