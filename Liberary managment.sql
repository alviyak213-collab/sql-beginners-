-- use alviya ;

-- CREATING TABLES AND INSERTING DATA FOR LIBRARY MANAGEMENT SYSTEM
 CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    category VARCHAR(50),
    total_copies INT
); 

INSERT INTO Books VALUES
(1, 'Python Programming', 'Mark Lutz', 'Programming', 5),
(2, 'Data Science Handbook', 'Jake VanderPlas', 'Data Science', 4),
(3, 'Database System Concepts', 'Abraham Silberschatz', 'Database', 6),
(4, 'Computer Networks', 'Andrew S. Tanenbaum', 'Networking', 5),
(5, 'Operating System Concepts', 'Abraham Silberschatz', 'Operating System', 4),
(6, 'Machine Learning Basics', 'Kevin Murphy', 'AI/ML', 3),
(7, 'Artificial Intelligence', 'Stuart Russell', 'AI/ML', 5),
(8, 'Web Development', 'Jon Duckett', 'Web Technology', 4),
(9, 'Clean Code', 'Robert C. Martin', 'Programming', 6),
(10, 'C Programming Language', 'Brian Kernighan', 'Programming', 5),
(11, 'SQL Cookbook', 'Anthony Molinaro', 'Database', 4),
(12, 'Data Structures and Algorithms', 'Thomas Cormen', 'DSA', 5),
(13, 'Cybersecurity Essentials', 'Charles Brooks', 'Cybersecurity', 3),
(14, 'Digital Electronics', 'Thomas Floyd', 'Electronics', 4),
(15, 'Statistics for Data Science', 'Peter Bruce', 'Data Science', 5),
(16, 'Deep Learning', 'Ian Goodfellow', 'AI/ML', 3),
(17, 'Java Programming', 'Herbert Schildt', 'Programming', 4),
(18, 'Software Engineering', 'Ian Sommerville', 'Software', 5),
(19, 'Cloud Computing', 'Rajkumar Buyya', 'Cloud', 4),
(20, 'Computer Architecture', 'David Patterson', 'Architecture', 3); 


 CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR(50),
    year INT,
    email VARCHAR(100)
); 
* INSERT INTO Students VALUES
(1, 'Aarav Sharma', 'CSE', 2, 'aarav@gmail.com'),
(2, 'Ananya Verma', 'CSE', 3, 'ananya@gmail.com'),
(3, 'Rohan Singh', 'IT', 2, 'rohan@gmail.com'),
(4, 'Simran Khan', 'CSE', 4, 'simran@gmail.com'),
(5, 'Aditya Gupta', 'AI-DS', 2, 'aditya@gmail.com'),
(6, 'Mehak Joshi', 'IT', 3, 'mehak@gmail.com'),
(7, 'Arjun Mehta', 'CSE', 3, 'arjun@gmail.com'),
(8, 'Ishita Sharma', 'AI-DS', 2, 'ishita@gmail.com'),
(9, 'Krishna Patel', 'CSE', 4, 'krishna@gmail.com'),
(10, 'Neha Kapoor', 'IT', 2, 'neha@gmail.com'),
(11, 'Riya Mishra', 'AI-DS', 3, 'riya@gmail.com'),
(12, 'Kunal Yadav', 'CSE', 2, 'kunal@gmail.com'),
(13, 'Sakshi Agarwal', 'IT', 4, 'sakshi@gmail.com'),
(14, 'Rahul Verma', 'CSE', 3, 'rahul@gmail.com'),
(15, 'Muskan Ali', 'AI-DS', 2, 'muskan@gmail.com'),
(16, 'Ayush Tiwari', 'CSE', 4, 'ayush@gmail.com'),
(17, 'Priya Singh', 'IT', 3, 'priya@gmail.com'),
(18, 'Varun Kumar', 'AI-DS', 2, 'varun@gmail.com'),
(19, 'Nandini Gupta', 'CSE', 3, 'nandini@gmail.com'),
(20, 'Harsh Saxena', 'IT', 4, 'harsh@gmail.com'); 

 CREATE TABLE Issue_Return (
    issue_id INT PRIMARY KEY,
    book_id INT,
    student_id INT,
    issue_date DATE,
    due_date DATE,
    return_date DATE,
    
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);


INSERT INTO Issue_Return VALUES
(1, 1, 1, '2026-08-01', '2026-08-15', '2026-08-12'),
(2, 3, 2, '2026-08-02', '2026-08-16', '2026-08-15'),
(3, 1, 3, '2026-08-03', '2026-08-17', NULL),
(4, 5, 4, '2026-08-04', '2026-08-18', '2026-08-20'),
(5, 2, 5, '2026-08-05', '2026-08-19', '2026-08-17'),
(6, 9, 6, '2026-08-06', '2026-08-20', NULL),
(7, 1, 7, '2026-08-07', '2026-08-21', '2026-08-19'),
(8, 12, 8, '2026-08-08', '2026-08-22', NULL),
(9, 3, 9, '2026-08-09', '2026-08-23', '2026-08-22'),
(10, 6, 10, '2026-08-10', '2026-08-24', '2026-08-25'),
(11, 1, 11, '2026-08-11', '2026-08-25', NULL),
(12, 9, 12, '2026-08-12', '2026-08-26', '2026-08-24'),
(13, 4, 13, '2026-08-13', '2026-08-27', NULL),
(14, 2, 14, '2026-08-14', '2026-08-28', '2026-08-26'),
(15, 7, 15, '2026-08-15', '2026-08-29', NULL),
(16, 1, 16, '2026-08-16', '2026-08-30', '2026-08-29'),
(17, 3, 17, '2026-08-17', '2026-08-31', NULL),
(18, 9, 18, '2026-08-18', '2026-09-01', '2026-08-30'),
(19, 12, 19, '2026-08-19', '2026-09-02', NULL),
(20, 6, 20, '2026-08-20', '2026-09-03', '2026-09-01'),
(21, 1, 2, '2026-09-01', '2026-09-15', NULL),
(22, 9, 4, '2026-09-02', '2026-09-16', NULL),
(23, 3, 6, '2026-09-03', '2026-09-17', '2026-09-15'),
(24, 1, 8, '2026-09-04', '2026-09-18', NULL),
(25, 12, 10, '2026-09-05', '2026-09-19', NULL),
(26, 9, 12, '2026-09-06', '2026-09-20', '2026-09-18'),
(27, 1, 14, '2026-09-07', '2026-09-21', NULL),
(28, 5, 16, '2026-09-08', '2026-09-22', NULL),
(29, 2, 18, '2026-09-09', '2026-09-23', '2026-09-20'),
(30, 9, 20, '2026-09-10', '2026-09-24', NULL); 


 -- select * from books;
 -- select * from students ;
-- select * from issue_return ; 

-- BOOK NOT RETURNED, LATE, EARLY, ON TIME WITH STUDENT DETAILS
SELECT
     issue_id , 
     book_id , 
     student_id , 
     due_date , 
     return_date ,
CASE
    when return_date IS NULL then 'NOT RETURNED'
    when return_date > due_date then 'LATE'
    when return_date < due_date then 'EARLY'
    else 'ON TIME'
END AS return_status 
From issue_return; 

--BOOK NOT RETURNED OR LATE WITH STUDENT DETAILS
 SELECT 
      s.student_id,
      s.name,
      s.course,
      i.due_date,
      i.return_date,
      case
          when i.return_date IS null
          then "not returned"
          when i.return_date > i.due_date then 'late'
          end as status
          from students s
           join issue_return i
          on s.student_id = i.student_id
          where i.return_date IS NULL
          or i.return_date > i.due_date ;  

 -- BOOK ISSUED COUNT
 SELECT 
    book_id,
    COUNT(*) AS issue_count
FROM Issue_Return
GROUP BY book_id; 

-- STUDENT WITH MOST BOOKS ISSUED
 SELECT
    s.student_id,
    s.name,
    COUNT(i.issue_id) AS books_issued
FROM Students s
JOIN Issue_Return i
    ON s.student_id = i.student_id
GROUP BY s.student_id, s.name
ORDER BY books_issued DESC; 

-- BOOKS NOT ISSUED
 SELECT
    b.book_id,
    b.title,
    b.author,
    b.category
FROM Books b
LEFT JOIN Issue_Return i
    ON b.book_id = i.book_id
WHERE i.book_id IS NULL; 

-- BOOKS ISSUED BY CATEGORY
 SELECT
    b.category,
    COUNT(i.issue_id) AS books_issued
FROM Books b
JOIN Issue_Return i
    ON b.book_id = i.book_id
GROUP BY b.category
ORDER BY books_issued DESC; 










