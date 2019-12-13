package mosesk.ems;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long>{
	List<Employee> findALLByEmployeeGender(String employeeGender);
	
	@Query("from Employee where employeeGender=?1 order by employeeFirstName")
	List<Employee> findAllByEmployeeGenderOrderByNAme(String employeeGender);
}

