CREATE TABLE Dept_Manager (
	Dept_No varchar(5) references Departments(Dept_no),
	Emp_No varchar(10)
);
