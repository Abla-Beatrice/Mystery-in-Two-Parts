create table Titles (
	title_id varchar not null,
	title varchar not null,
	primary key (title_id)
);

create table Employees (
	emp_no integer not null, 
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	primary key (emp_no),
	foreign key (emp_title_id) references Titles (title_id)
);

create table Departements (
	dept_no varchar(15) not null,
	dept_name  varchar not null,
	primary key (dept_no)
);


create table Dept_emp (
	emp_no int not null,
	dept_no varchar(15) not null,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references Employees (emp_no),
	foreign key (dept_no) references Departments (dept_no)
);

create table Dept_manager( 
	dept_no varchar(15) not null,
	emp_no integer not null,
	primary key (dept_no, emp_no),
	foreign key (emp_no) references Employees (emp_no),
	foreign key (dept_no) references Departments (dept_no)
);

create table Salaries (
	emp_no integer not null,
	salary integer not null,
	primary key (emp_no),
	foreign key (emp_no) references Employees (emp_no)
);


	