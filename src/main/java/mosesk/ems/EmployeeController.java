package mosesk.ems;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeRepository employeeRepo;
	@Autowired
	EmployeeService service;
	@Autowired
    private UserRepository userRepository;
	
	@Autowired
	DepartmentDropDownService deptService;
	
	@RequestMapping("")
	public  ModelAndView returnLoginForm() {
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("loginRequest", new LoginRequest());
		mv.addObject("title", "Login");
		return mv;
	}
	
	@PostMapping("/login")
	public String authenticateUser(@Valid @ModelAttribute LoginRequest loginRequest, 
			BindingResult result, SessionStatus status, HttpServletRequest request) {
		User loginUser = userRepository.findByName(loginRequest.getName());
		boolean error = false;
		if(loginRequest.getName().isEmpty()) {
			error = true;
			}
		if(loginRequest.getPassword().isEmpty()) {
			error = true;
			}
		if(error) {
			return "login";
			}
		if(loginUser.getPassword().equals(loginRequest.getPassword())) {
			return "redirect:/home";
			}else {
				result.rejectValue("password", "error.invalid");
				error = true;
				return "login";
				}
		}
	  
	@PostMapping("/signup")
	public String registerUser(@Valid @RequestBody SignUpRequest signUpRequest) {
		if(userRepository.existsByEmail(signUpRequest.getEmail())) {
			return "User Already Exists.";
			}
		User user = new User();
		user.setName(signUpRequest.getName());
		user.setEmail(signUpRequest.getEmail());
		user.setPassword(signUpRequest.getPassword());
		User result = userRepository.save(user);
		
		return  result.getName()+" Registered Successfully";
		}
	
	@RequestMapping("/home")
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
		mv.addObject("title", "Add Employee");
		
		return mv;
	}
	
	@RequestMapping(value="/addNewEmployee", method=RequestMethod.POST)
	public String postEmployeeData(@Valid @ModelAttribute("employee") EmpRegisterRequest empRegReq, 
			BindingResult result, SessionStatus status, HttpServletRequest request) {
	
		if(empRegReq.getEmployeeFirstName().isEmpty()) {
			result.rejectValue("employeeFirstName", "error.employeeFirstName");
			return "employeeForm";
		}
		if(empRegReq.getEmployeeLastName().isEmpty()) {
			result.rejectValue("employeeLastName", "error.employeeLastName");
			return "employeeForm";
		}
		if(empRegReq.getEmployeeDOB().isEmpty()) {
			result.rejectValue("employeeDOB", "error.employeeDOB");
			return "employeeForm";
		}
		if(empRegReq.getEmployeeEmail().isEmpty()) {
			result.rejectValue("employeeEmail", "error.employeeEmail");
			return "employeeForm";
		}
		if(employeeRepo.existsByEmployeeEmail(empRegReq.getEmployeeEmail())) {
			return "saveFailureMessage";
		}
		
		Employee newEmployee = new Employee();
		newEmployee.setEmployeeContractDuration(empRegReq.getEmployeeContractDuration());
		newEmployee.setEmployeeDeptName(empRegReq.getEmployeeDeptName());
		newEmployee.setEmployeeDOB(empRegReq.getEmployeeDOB());
		newEmployee.setEmployeeEmail(empRegReq.getEmployeeEmail());
		newEmployee.setEmployeeFirstName(empRegReq.getEmployeeFirstName());
		newEmployee.setEmployeeGender(empRegReq.getEmployeeGender());
		newEmployee.setEmployeeJobType(empRegReq.getEmployeeJobType());
		newEmployee.setEmployeeLastName(empRegReq.getEmployeeLastName());
		newEmployee.setEmployeeOtherName(empRegReq.getEmployeeOtherName());
		newEmployee.setEmployeePhoto(empRegReq.getEmployeePhoto());
		newEmployee.setEmployeeSalary(empRegReq.getEmployeeSalary());
		
		
		service.saveEmployee(newEmployee);
		status.setComplete();
		return "redirect:/home";
	}
	
	@RequestMapping(value="/editEmployee", method=RequestMethod.POST)
	public String editEmployeeData(@ModelAttribute("employee") Employee employee, SessionStatus status) {
		service.saveEmployee(employee);
		status.setComplete();
		return "redirect:/home";
	}
	
	
	@RequestMapping(value = "/success", method = RequestMethod.GET)
	    public String success(Model model) {
	         return "successMessage";
	    }
	@RequestMapping("/editEmployeeForm")
	public ModelAndView editEmployForm(@RequestParam Long employeeId) {
		ModelAndView mv = new ModelAndView("employeeEditForm");
		mv.addObject("employee", service.getEmployeeDetail(employeeId));
		mv.addObject("title", "Edit Employee");
		return mv;
	}
	
	@RequestMapping("/employeeDetail")
	public ModelAndView getEmployeeDetail(@RequestParam Long employeeId) {
		Employee employeeDetail = service.getEmployeeDetail(employeeId);
		ModelAndView mv = new ModelAndView("employeeDetailView");
		MultipartFile empPhoto = employeeDetail.getEmployeePhoto();
	

		mv.addObject("employee", employeeDetail);
		mv.addObject("empPhoto", empPhoto);
		mv.addObject("title", "Employee Details");
		return mv;
	}
	
	@RequestMapping(value="/deleteEmployee")
	public String deleteEmployee(@RequestParam Long employeeId,
			SessionStatus status) {
		service.deleteEmployee(employeeId);	
		status.setComplete();
		return "redirect:/home";
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
		List<Employee> empList = service.fetchAllEmployees();
		ModelAndView mv = new ModelAndView("departmentForm");
		mv.addObject("department", new DepartmentDropDown());
		mv.addObject("employees", empList);
		mv.addObject("title", "New Department");
		return mv;
	}
	
	@RequestMapping(value="/addDepartment", method=RequestMethod.POST)
	public String postDepartment(@ModelAttribute("department") DepartmentDropDown department, 
			BindingResult result, SessionStatus status) {
		if(department.getDeptName().isEmpty()) {
			result.rejectValue("deptName", "error.deptName");
			return "departmentForm";
		}
		deptService.saveDepartment(department);
		status.isComplete();
		return "redirect:newDepartmentForm";
		}
	
	@RequestMapping("/logout")
	public String userLogout() {
		return "redirect:";
	}
  
}
	
	