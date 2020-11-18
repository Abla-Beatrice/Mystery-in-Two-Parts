-- List of each employee: employee number, last name, first name, sex, and salary.
select
	d.emp_no,
	d.last_name,
	d.first_name,
	d.sex,
	e.salary
from "Employees" as d
left join "Salaries" as e
on d.emp_no = e.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
select 
	first_name,
	last_name,
	hire_date
from "Employees"
where extract(year from hire_date) = 1986;

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select
	a.dept_no,
	a.dept_name,
	c.emp_no,
	d.last_name,
	d.first_name
from "Departments" as a
left join "Dept_manager" as c
	on a.dept_no = c.dept_no
left join "Employees" as d
	on c.emp_no = d.emp_no;

-- List the department of each employee number, last name, first name, and department name.
select 
	d.emp_no,
	d.last_name,
	d.first_name,
	a.dept_name
from "Employees" as d
	left join "Dept_emp" as b
		on d.emp_no = b.emp_no
	left join "Departments" as a
		on b.dept_no = a.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select
		first_name,
		last_name,
		sex
from "Employees"
where first_name = 'Hercules' and last_name like 'B%';

-- List all employees in the Sales department...
select 
	d.emp_no,
	d.last_name,
	d.first_name,
	a.dept_name
from "Employees" as d
	left join "Dept_emp" as b
		on d.emp_no = b.emp_no
	left join "Departments" as a
		on b.dept_no = a.dept_no
where a.dept_name = 'Sales';

-- List all employees in the Sales and Development departments...
select 
	d.emp_no,
	d.last_name,
	d.first_name,
	a.dept_name
from "Employees" as d
	left join "Dept_emp" as b
		on d.emp_no = b.emp_no
	left join "Departments" as a
		on b.dept_no = a.dept_no
where a.dept_name = 'Sales' or a.dept_name = 'Development';

-- List the following data in descending order
select
	count(last_name),
	last_name
from "Employees"
group by last_name
order by count(last_name) desc;