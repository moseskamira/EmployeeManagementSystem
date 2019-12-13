package mosesk.ems;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService {
	
	@Autowired
	EmployeeRepository employeeRepo;
	
	public List<Employee> getAllEmployees() {
		return employeeRepo.findAll();
	}
	
	public Optional<Employee> getEmployeeById(Long employeeId) {
		return employeeRepo.findById(employeeId);
	}
	
	public void saveEmployee(Employee employee) {
		employeeRepo.saveAndFlush(employee);
	}
	
	public String deleteEmployee(Long employeeId) {
		Employee employeeToBeDeleted = employeeRepo.getOne(employeeId);
		employeeRepo.delete(employeeToBeDeleted);
		return "Employee Deleted Successfully";
	}
	
	public List<Employee> fetchAllByGender(String gender) {
		return employeeRepo.findALLByEmployeeGender(gender);
	}
	
}
