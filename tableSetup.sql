DROP TABLE IF EXISTS departments, dept_emp, dept_man, employees,salary, titles;

CREATE TABLE titles (
	TID CHAR(5) NOT NULL,
  	Title VARCHAR NOT NULL,
  	PRIMARY KEY (TID)
);	

CREATE TABLE departments (
	DENO CHAR(4) NOT NULL,
  	DEName VARCHAR NOT NULL,
  	PRIMARY KEY (DENO)
);	

CREATE TABLE salary (
	EENO INT NOT NULL,
  	SAL INT NOT NULL,
  	PRIMARY KEY (EENO)
);	

CREATE TABLE dept_man (
 	DENO CHAR(4) NOT NULL,
  	EENO INT NOT NULL,
  	PRIMARY KEY(EENO, DENO),
	FOREIGN KEY (DENO) REFERENCES departments(DENO)
);

CREATE TABLE dept_emp (
 	EENO INT NOT NULL,
  	DENO CHAR(4) NOT NULL,
  	PRIMARY KEY(EENO, DENO),
	FOREIGN KEY (DENO) REFERENCES departments(DENO)
);

CREATE TABLE employees (
 	EENO INT NOT NULL,
	TID CHAR(5) NOT NULL,
	DOB VARCHAR(10) NOT NULL,
	NameF VARCHAR NOT NULL,
	NameL VARCHAR NOT NULL,
	Sex CHAR(1) NOT NULL,
	DOH DATE NOT NULL,	
  	PRIMARY KEY (EENO),
	FOREIGN KEY (TID) REFERENCES titles(TID)
);
