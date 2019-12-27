package mosesk.ems;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DepartmentDropDownService {
	@Autowired
	DepartmentDropDownRepository deptDropDownRepo;
	
	public List<DepartmentDropDown> getAllDepartments() {
		return deptDropDownRepo.findAll();
	}
	
	public void saveDepartment(DepartmentDropDown department) {
		deptDropDownRepo.saveAndFlush(department);
	}

}
