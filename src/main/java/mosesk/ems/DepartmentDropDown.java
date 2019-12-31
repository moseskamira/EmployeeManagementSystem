package mosesk.ems;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class DepartmentDropDown {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int deptId;
	private String deptName;
	private String deptHead;
	private String deptLocation;
	public DepartmentDropDown() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public DepartmentDropDown(int deptId, String deptName, String deptHead, String deptLocation) {
		super();
		this.deptId = deptId;
		this.deptName = deptName;
		this.deptHead = deptHead;
		this.deptLocation = deptLocation;
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

	@Override
	public String toString() {
		return "DepartmentDropDown [deptId=" + deptId + ", deptName=" + deptName + ", deptHead=" + deptHead
				+ ", deptLocation=" + deptLocation + "]";
	}
}
