package mosesk.ems;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeService service;
	
//	@RequestMapping("")
//	public  String returnHomePage() {
//		return "index";
//	}
	
	@RequestMapping("")
	public ModelAndView employees() {
		List<Employee> employeeList = service.getAllEmployees();
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("message", employeeList);
		
		return mv;
	}
	@RequestMapping("/newEmployeeForm")
	public  String returnEmployeeRegForm(Map<String, Object> model) {
		model.put("employee", new Employee());
		return "employeeForm";
	}
	
	@RequestMapping(value="/addNewEmployee", method=RequestMethod.POST)
	public String postEmployeeData(@ModelAttribute("employee") Employee employee) {
		service.saveEmployee(employee);
		return "employeeForm";
	}
	@RequestMapping("/editEmployeeForm")
	public ModelAndView editEmployForm(@RequestParam Long employeeId) {
		ModelAndView mv = new ModelAndView("employeeEditForm");
		Optional<Employee> employeeToBeEdited = service.getEmployeeById(employeeId);
		mv.addObject("employeeToEdit", employeeToBeEdited);
		return mv;
	}
	@RequestMapping(value="editEmployeeInfo", method=RequestMethod.PUT)
	public void updateEmployeeData() {
		
	}
	
	@RequestMapping(value="/deleteEmployee")
	public String deleteEmployee(@RequestParam Long employeeId) {
		service.deleteEmployee(employeeId);		
		return "searchResult";
	}
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword) {
		ModelAndView mv = new ModelAndView("searchResult");
		List<Employee> searchResultList = service.searchEmployee(keyword);
		mv.addObject("searchResult", searchResultList);
		return mv;
	}
}
