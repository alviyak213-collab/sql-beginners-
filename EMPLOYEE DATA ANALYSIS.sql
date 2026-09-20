--  USE alviya 
/* CREATE TABLE students
 ( Employee_id INT AUTO_INCREMENT PRIMARY KEY, 
  Name VARCHAR(100) NOT NULL DEFAULT 'No Name', 
  Salary INT, 
  Email VARCHAR(100) UNIQUE,
  Joining_date DATE
   ); */

 --  RENAME TABLE STUDENTS TO EMPLOYEE_DATA ;

 /* INSERT INTO Employee_data (Employee_id, Name, Salary, email, Joining_date)
VALUES
(1, 'Aarav Sharma', 45000, 'aarav.sharma@gmail.com', '2022-06-15'),
(2, 'Ananya Verma', 52000, 'ananya.verma@gmail.com', '2021-03-20'),
(3, 'Rohan Singh', 38000, 'rohan.singh@gmail.com', '2023-01-10'),
(4, 'Simran Khan', 60000, 'simran.khan@gmail.com', '2020-08-25'),
(5, 'Aditya Gupta', 47000, 'aditya.gupta@gmail.com', '2022-11-05'),
(6, 'Mehak Joshi', 55000, 'mehak.joshi@gmail.com', '2021-07-18'),
(7, 'Arjun Mehta', 72000, 'arjun.mehta@gmail.com', '2019-05-12'),
(8, 'Ishita Sharma', 41000, 'ishita.sharma@gmail.com', '2023-04-22'),
(9, 'Krishna Patel', 68000, 'krishna.patel@gmail.com', '2020-02-17'),
(10, 'Neha Kapoor', 50000, 'neha.kapoor@gmail.com', '2022-09-30'),
(11, 'Riya Mishra', 62000, 'riya.mishra@gmail.com', '2021-12-08'),
(12, 'Kunal Yadav', 35000, 'kunal.yadav@gmail.com', '2023-06-19'),
(13, 'Sakshi Agarwal', 58000, 'sakshi.agarwal@gmail.com', '2020-10-14'),
(14, 'Rahul Verma', 43000, 'rahul.verma@gmail.com', '2022-01-25'),
(15, 'Muskan Ali', 65000, 'muskan.ali@gmail.com', '2021-05-11'),
(16, 'Ayush Tiwari', 48000, 'ayush.tiwari@gmail.com', '2023-02-28'),
(17, 'Priya Singh', 75000, 'priya.singh@gmail.com', '2019-11-04'),
(18, 'Varun Kumar', 39000, 'varun.kumar@gmail.com', '2023-08-16'),
(19, 'Nandini Gupta', 57000, 'nandini.gupta@gmail.com', '2020-07-09'),
(20, 'Harsh Saxena', 46000, 'harsh.saxena@gmail.com', '2022-04-18'),
(21, 'Shreya Jain', 69000, 'shreya.jain@gmail.com', '2021-09-13'),
(22, 'Manish Pandey', 36000, 'manish.pandey@gmail.com', '2023-03-07'),
(23, 'Tanya Malhotra', 61000, 'tanya.malhotra@gmail.com', '2020-12-21'),
(24, 'Dev Agarwal', 80000, 'dev.agarwal@gmail.com', '2018-06-30'),
(25, 'Pooja Singh', 44000, 'pooja.singh@gmail.com', '2022-10-12'),
(26, 'Yash Raj', 53000, 'yash.raj@gmail.com', '2021-02-15'),
(27, 'Khushi Verma', 67000, 'khushi.verma@gmail.com', '2020-05-27'),
(28, 'Ankit Mishra', 40000, 'ankit.mishra@gmail.com', '2023-07-03'),
(29, 'Diya Kapoor', 59000, 'diya.kapoor@gmail.com', '2021-11-19'),
(30, 'Mohit Sharma', 49000, 'mohit.sharma@gmail.com', '2022-03-23'); */

 -- select * from Employee_data ;


 /* CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
); */

/* INSERT INTO Department (department_id, department_name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing'),
(5, 'Sales'),
(6, 'Operations'),
(7, 'IT'),
(8, 'HR'),
(9, 'Finance'),
(10, 'Marketing'),
(11, 'Sales'),
(12, 'Operations'),
(13, 'IT'),
(14, 'HR'),
(15, 'Finance'),
(16, 'Marketing'),
(17, 'Sales'),
(18, 'Operations'),
(19, 'IT'),
(20, 'HR'),
(21, 'Finance'),
(22, 'Marketing'),
(23, 'Sales'),
(24, 'Operations'),
(25, 'IT'),
(26, 'HR'),
(27, 'Finance'),
(28, 'Marketing'),
(29, 'Sales'),
(30, 'Operations'); */



 -- SELECT * FROM DEPARTMENT ;

/* select 
      min(salary) as minimum_salary,
      max(salary) as maximum_salary
from employee_data */

-- salary range (35000-80000)

/* SELECT
     CASE 
         WHEN Salary < 40000 THEN 'BELOW 40K'
         WHEN Salary BETWEEN 40000 AND 59999 THEN '40K-59K'
         ELSE '60K ABOVE'
        END AS SALARY_RANGE,
        COUNT(*) AS EMPLOYEE_COUNT */
/* FROM Employee_data
GROUP BY

    CASE 
         WHEN Salary < 40000 THEN 'BELOW 40K'
        WHEN Salary BETWEEN 40000 AND 59999 THEN '40K-59K'
        ELSE '60K ABOVE'
        END ; */

-- SELECT* FROM Employee_data;
-- SELECT * FROM DEPARTMENT;

-- ALTER TABLE department ADD CONSTRAINT FOREIGN KEY (department_id) REFERENCES Employee_data(employee_id); 

/* SELECT 
       e.EMPLOYEE_ID,
       e.NAME,
       e.SALARY,
       d.DEPARTMENT_ID,
       d.DEPARTMENT_NAME
FROM EMPLOYEE_DATA e
join department d 
on e.employee_id = d.department_id */

/* SELECT
    d.Department_Name,
    AVG(e.Salary) AS Average_Salary,
    CASE
        WHEN AVG(e.Salary) < 40000 THEN 'BELOW 40K'
        WHEN AVG(e.Salary) BETWEEN 40000 AND 59999 THEN '40K-59K'
        ELSE '60K ABOVE'
    END AS Salary_Category
FROM Employee_data e
JOIN Department d
ON e.Employee_ID = d.Department_ID
GROUP BY d.Department_Name; */

/* SELECT
    d.Department_Name,
    CASE
        WHEN e.Salary < 40000 THEN 'BELOW 40K'
        WHEN e.Salary BETWEEN 40000 AND 59999 THEN '40K-59K'
        ELSE '60K ABOVE'
    END AS Salary_Category,
    COUNT(*) AS Employee_Count
FROM Employee_data e
JOIN Department d
ON e.Employee_ID = d.Department_ID
GROUP BY
    d.Department_Name,
    Salary_Category
ORDER BY
    d.Department_Name; */

/*    SELECT
    e.Name,
    d.Department_Name,
    e.Salary
FROM Employee_data e
JOIN Department d
ON e.Employee_ID = d.Department_ID
WHERE e.Salary < 40000; */





