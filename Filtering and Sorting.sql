CREATE DATABASE company;
USE company;
create table employees(EmpID INT,
EmpName varchar(50),
Department varchar(50),
City varchar(50),
Salary varchar(50),
Hiredate date
);
insert into employees(EmpID,EmpName,Department,City,Salary,Hiredate)
values
(101,'Rahul Mehta','sales','Delhi',55000,'2020-04-12'),
(102,'Priya Sharma','HR','Mumbai',62000,'2019-09-25'),
(103,'Aman Singh','IT','Bengaluru',72000,'2021-03-10'),
(104,'Neha Patel','Sales','Delhi',48000,'2022-01-14'),
(105,'Karan Joshi','Marketing','Pune',45000,'2018-07-22'),
(106,'Divya Nair','IT','Chennai',81000,'2019-12-11'),
(107,'Raj Kumar','HR','Delhi',60000,'2020-05-28'),
(108,'Simran Kaur','Finance','Mumbai',58000,'2021-08-03'),
(109,'Arjun Reddy','IT','Hyderabad',70000,'2022-02-18'),
(110,'Anjali Das','Sales','Kolkata',51000,'2023-01-15');

-- 1 Show employees working in either the ‘IT’ or ‘HR’ departments
select*from employees Where Department='IT'or Department='HR';



 -- 2 Retrieve employees whose department is in ‘Sales’, ‘IT’, or ‘Finance’.
select*from employees Where Department IN ('Sales','IT','Finance');


-- 3 : Display employees whose salary is between ₹50,000 and ₹70,000.
select*from employees Where Salary between 50000 and 70000;


 -- 4 : List employees whose names start with the letter ‘A’
select*from employees Where EmpName like'A%';


 -- 5 : Find employees whose names contain the substring ‘an’.
select*from employees Where EmpName like '%an%';


 -- 6 : Show employees who are from ‘Delhi’ or ‘Mumbai’ and earn more than ₹55,000
select*from employees Where(City='Delhi' or City='Mumbai')and Salary>55000;


-- 7 : Display all employees except those from the ‘HR’ department
select*from employees Where Department <>'HR';

 -- 8 : Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first)
select*from employees Where Hiredate between 2019 and 2022 order by Hiredate asc;

