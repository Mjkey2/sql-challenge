CREATE TABLE Dept_Emp (
	Emp_No varchar(10) references Employees(Emp_no),
	Dept_No varchar(5) references Departments(Dept_no)
);
