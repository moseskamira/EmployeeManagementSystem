package mosesk.ems;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeService service;
	
	@RequestMapping("/employees")
	public ModelAndView home() {
		List<Employee> employeeList = service.getAllEmployees();
		ModelAndView mv = new ModelAndView("index");
		if(employeeList.isEmpty()==false) {
			mv.addObject("message", employeeList);
		}
		return mv;
	}
	
	@PostMapping("/emp")
	public void postEmployeeData(@RequestBody Employee employee) {
		service.saveEmployee(employee);
		
	}
}
