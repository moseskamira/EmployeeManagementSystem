package mosesk.ems;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	@RequestMapping("/newEmployeeForm")
	public  String returnEmployeeRegForm(Map<String, Object> model) {
		model.put("employee", new Employee());
		return "employeeForm";
	}
	
	@RequestMapping(value="/addNewEmployee", method=RequestMethod.POST)
	public void postEmployeeData(@ModelAttribute("employee") Employee employee) {
		service.saveEmployee(employee);
		
	}
}
