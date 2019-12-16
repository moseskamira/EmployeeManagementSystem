
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
