CREATE TABLE Salaries (
	Emp_No varchar(10) references Employees(Emp_no),
	Salary int
);