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
	public DepartmentDropDown() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DepartmentDropDown(int deptId, String deptName) {
		super();
		this.deptId = deptId;
		this.deptName = deptName;
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
	@Override
	public String toString() {
		return "DepartmentDropDown [deptId=" + deptId + ", deptName=" + deptName + "]";
	}
}
