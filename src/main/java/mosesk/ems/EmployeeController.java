package mosesk.ems;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeService service;
	
	@RequestMapping("")
	public ModelAndView employees() {
		List<Employee> employeeList = service.fetchAllEmployees();
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("employees", employeeList);
		return mv;
	}
	@RequestMapping("/newEmployeeForm")
	public  String returnEmployeeRegForm(Map<String, Object> model) {
		model.put("employee", new Employee());
		return "employeeForm";
	}
	
	@RequestMapping(value="/addNewEmployee", method=RequestMethod.POST)
	public String postEmployeeData(@ModelAttribute("employee") Employee employee, 
			BindingResult result, SessionStatus status) {
		boolean error = false;
		if(employee.getEmployeeFirstName().isEmpty()) {
			result.rejectValue("employeeFirstName", "This Field Can Not Be Blank");
			error = true;
		}
		if(employee.getEmployeeLastName().isEmpty()) {
			result.rejectValue("employeeLastName", "This Field Can Not Be Blank");
			error = true;
		}
		if(employee.getEmployeeGender().isEmpty()) {
			result.rejectValue("employeeGender", "This Field Can Not Be Blank");
			error = true;
		}
		if(employee.getEmployeeDOB().isEmpty()) {
			result.rejectValue("employeeDOB", "This Field Can Not Be Blank");
			error = true;
		}
		if(employee.getEmployeeDeptName().isEmpty()) {
			result.rejectValue("employeeDeptName", "This Field Can Not Be Blank");
			error = true;
		}
		if(employee.getEmployeeJobType().isEmpty()) {
			result.rejectValue("employeeJobType", "This Field Can Not Be Blank");
			error = true;
		}
		if(employee.getEmployeeContractDuration()<1) {
			result.rejectValue("employeeContractDuration", "Duration Can Not Be Less Than 1");
			error = true;
		}
		if(error) {
			return "employeeForm";
		}
		service.saveEmployee(employee);
		status.setComplete();
		return "redirect:";
	}
	
	@RequestMapping(value = "/success", method = RequestMethod.GET)
	    public String success(Model model) {
	         return "successMessage";
	    }
	@RequestMapping("/editEmployeeForm")
	public ModelAndView editEmployForm(@RequestParam Long employeeId) {
		ModelAndView mv = new ModelAndView("employeeEditForm");
		mv.addObject("employee", service.getEmployeeDetail(employeeId));
		return mv;
	}
	
	@RequestMapping("/employeeDetail")
	public ModelAndView getEmployeeDetail(@RequestParam Long employeeId) {
		ModelAndView mv = new ModelAndView("employeeDetailView");
		mv.addObject("employee", service.getEmployeeDetail(employeeId));
		return mv;
	}
	
	@RequestMapping(value="editEmployeeInfo", method=RequestMethod.PUT)
	public void updateEmployeeData() {
		
	}
	
	@RequestMapping(value="/deleteEmployee")
	public String deleteEmployee(@RequestParam Long employeeId,
			SessionStatus status) {
		service.deleteEmployee(employeeId);	
		status.setComplete();
		return "redirect:";
	}
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String myKeyword) {
		ModelAndView mv = new ModelAndView();
		if(myKeyword != null && !myKeyword.equals("")) {
			List<Employee> searchResultList = service.searchEmployee(myKeyword);
			if(!searchResultList.isEmpty()) {
				mv.setViewName("searchResult");
				mv.addObject("searchResult", searchResultList);
			}else {
				mv.setViewName("index");
			}
		}else {
			mv.setViewName("index");
		}
		return mv;
		}
}
	
	