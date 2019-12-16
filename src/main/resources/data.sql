insert into employee(employeeId, employeeFirstName, employeeLasttName, employeeOtherName, employeeGender,  employeeDOB, employeeDOB, employeeSalary) values('10','Jack','Moses','Kamira','Male','23-4-1988','234500',);


CREATE TABLE employee
(
 employeeId varchar(11) NOT NULL ,
 employeeFirstName varchar(100) NOT NULL,
 employeeLasttName varchar(100) NOT NULL,
 employeeOtherName varchar(100) DEFAULT NULL,
 employeeGender varchar(100) DEFAULT NULL,
 employeeDOB varchar(100) NOT NULL,
 employeeSalary varchar(11) NOT NULL ,
 PRIMARY KEY (employeeId)
);
