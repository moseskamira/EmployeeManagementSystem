 

<h4><strong>AVAILABLE EMPLOYEE LIST</strong></h4>
<hr/>
    <form class="form-inline my-2 my-lg-0" action="search" method="get">
      <input class="form-control mr-sm-2" type="search" name="myKeyword"/ placeholder="CASE SENSITIVE SEARCH">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Search"><strong>Search</strong></button>
    </form><br/>
     <table border="1" id="employees" class="center" >
           <tr>
               <th>First Name </th>
               <th>Last Name</th>
               <th>Gender</th>
              
               <th>Salary </th>
               <th colspan="3">Action </th>
               </tr>
               <c:forEach items="${employees}" var="employee">
               <tr>
                   <td>${employee.employeeFirstName}</td>
                   <td>${employee.employeeLastName}</td>
                   <td>${employee.employeeGender}</td>
               
                   <td>${employee.employeeSalary}</td>
                   <td align="center"><a href="employeeDetail?employeeId=${employee.employeeId}">Detail</a></td><td align="center"><a href="editEmployeeForm?employeeId=${employee.employeeId}">Edit</a></td><td align="center"><a href="deleteEmployee?employeeId=${employee.employeeId}">Delete</a></td>
               </tr>
               </c:forEach>
     </table>