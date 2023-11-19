DROP TABLE Titles cascade;
DROP TABLE Employees cascade;
DROP TABLE Departments cascade;
DROP TABLE Dept_Manager cascade;
DROP TABLE Dept_Emp cascade;
DROP TABLE Salaries cascade;

--dept then titles then employees then dept man then dept emp then salaries

CREATE TABLE Titles(
	Title_ID VARCHAR PRIMARY KEY,
	Title VARCHAR 
);

CREATE TABLE Employees (
	Emp_no varchar PRIMARY KEY,
	Emp_Title_ID varchar references titles(title_id),
	Birth_Date date,
	First_Name varchar,
	Last_Name varchar,
	Sex varchar,
	Hire_Date date
);

CREATE TABLE Departments (
	Dept_no varchar PRIMARY KEY,
	Dept_Name varchar
);

CREATE TABLE Dept_Manager (
	Dept_No varchar references Departments(Dept_no),
	Emp_No varchar
);

CREATE TABLE Dept_Emp (
	Emp_No varchar references Employees(Emp_no),
	Dept_No varchar references Departments(Dept_no)
);

CREATE TABLE Salaries (
	Emp_No varchar references Employees(Emp_no),
	Salary int
);