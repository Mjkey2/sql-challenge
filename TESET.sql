-- is this class or table?
CREATE TABLE Employees(
	Emp_No INTEGER NOT NULL PRIMARY KEY,
	Emp_Title_ID VARCHAR(5) NOT NULL,
	Salary INTEGER NOT NULL,
	Birthday TIMESTAMP NOT NULL,
	First_Name VARCHAR(15) NOT NULL,
	Last_Name VARCHAR (15) NOT NULL,
	Sex VARCHAR (6) NOT NULL,
	Hire_date TIMESTAMP NOT NULL,
	Dept_No VARCHAR
);