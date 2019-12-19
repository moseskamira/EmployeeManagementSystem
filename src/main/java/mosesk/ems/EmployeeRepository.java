package mosesk.ems;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {
	@Query(value="FROM Employee WHERE employeeFirstName LIKE '%' || :keyword || '%'" 
			+ " OR employeeLastName LIKE '%' || :keyword || '%'" 
					+ "OR employeeGender LIKE '%' || :keyword || '%'")
	public List<Employee> performSearch(@Param("keyword") String keyword);
	
//	List<Employee> findALLByEmployeeGender(String employeeGender);
	
//	@Query(value="FROM Employee employee where employeeGender=?1 order by employeeFirstName")
//	List<Employee> findAllByEmployeeGenderOrderByNAme(String employeeGender);
	
	
}
