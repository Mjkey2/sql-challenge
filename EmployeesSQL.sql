CREATE TABLE Employees (
	Emp_no varchar(10) PRIMARY KEY,
	Emp_Title_ID varchar(5) references titles(title_id),
	Birth_Date date,
	First_Name varchar(45),
	Last_Name varchar(45),
	Sex varchar(1),
	Hire_Date date
);
