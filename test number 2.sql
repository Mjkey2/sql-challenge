CREATE TABLE Titles(
	Title_ID VARCHAR (5) PRIMARY KEY,
	Title VARCHAR (20)
);

CREATE TABLE Employees (
	Emp_no varchar(10) PRIMARY KEY,
	Emp_Title_ID varchar(5) references titles(title_id),
	Birth_Date date,
	First_Name varchar(45),
	Last_Name varchar(45),
	Sex varchar(1),
	Hire_Date date
);

CREATE TABLE Departments (
	Dept_no varchar(5) PRIMARY KEY,
	Dept_Name varchar(30)
);

CREATE TABLE Dept_Manager (
	Dept_No varchar(5) references Departments(Dept_no),
	Emp_No varchar(10)
);

CREATE TABLE Dept_Emp (
	Emp_No varchar(10) references Employees(Emp_no),
	Dept_No varchar(5) references Departments(Dept_no)
);

CREATE TABLE Salaries (
	Emp_No varchar(10) references Employees(Emp_no),
	Salary int
);