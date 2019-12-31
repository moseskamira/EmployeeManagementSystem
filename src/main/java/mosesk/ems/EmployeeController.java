package mosesk.ems;

import java.util.List;
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
	
	@Autowired
	DepartmentDropDownService deptService;
	
	@RequestMapping("")
	public ModelAndView employees() {
		List<Employee> employeeList = service.fetchAllEmployees();
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("employees", employeeList);
		return mv;
	}
	
	@RequestMapping("/newEmployeeForm")
	public  ModelAndView returnEmployeeRegForm() {
		List<DepartmentDropDown> deptList = deptService.getAllDepartments();
		ModelAndView mv = new ModelAndView("employeeForm");
		mv.addObject("departments", deptList);
		mv.addObject("employee", new Employee());
		return mv;
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
		return "redirect:newEmployeeForm";
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
	
	@RequestMapping("/newDepartmentForm")
	public  ModelAndView returnDepartmentForm() {
		ModelAndView mv = new ModelAndView("departmentForm");
		mv.addObject("department", new DepartmentDropDown());
		return mv;
	}
	
	@RequestMapping(value="/addDepartment", method=RequestMethod.POST)
	public String postDepartment(@ModelAttribute("department") DepartmentDropDown department, 
			BindingResult result, SessionStatus status) {
		deptService.saveDepartment(department);
		status.isComplete();
		return "redirect:newDepartmentForm";
		}
}
	
	