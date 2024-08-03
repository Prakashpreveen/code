-- INSERTING VALUES:

-- FOR 'employee' TABLE:
INSERT INTO employee (first_name, last_name, email, dob, blood_group) VALUES
('Divya', 'Prakash', 'divya.prakash@office.com', '1998-04-23', 'A+'),
('Shiva', 'Prakash', 'shiva.prakash@office.com', '1995-06-15', 'A-'),
('Rahul', 'Kumar', 'rahul.kumar@office.com', '1990-08-10', 'B+'),
('Anjali', 'Sharma', 'anjali.sharma@office.com', '1992-12-01', 'O-'),
('Ravi', 'Singh', 'ravi.singh@office.com', '1994-03-22', 'AB+'),
('Sneha', 'Mehta', 'sneha.mehta@office.com', '1996-07-30', 'B-'),
('Karan', 'Verma', 'karan.verma@office.com', '1991-11-11', 'O+'),
('Pooja', 'Gupta', 'pooja.gupta@office.com', '1993-05-18', 'A+'),
('Neha', 'Bhatia', 'neha.bhatia@office.com', '1990-09-09', 'AB-'),
('Amit', 'Desai', 'amit.desai@office.com', '1989-02-28', 'O-');

-- FOR 'executives' TABLE:
INSERT INTO executives (emp_id, designation) VALUES
(1, 'Senior Developer'),
(2, 'Project Manager'),
(3, 'Software Engineer'),
(4, 'Business Analyst'),
(5, 'Team Lead'),
(6, 'Quality Assurance'),
(7, 'System Architect'),
(8, 'HR Manager'),
(9, 'Marketing Specialist'),
(10, 'Data Analyst');

-- FOR 'employee_detail' TABLE:
INSERT INTO employee_detail (emp_id, designation, joined_at, salary, rating) VALUES
(1, 'Senior Developer', '2022-01-15', 75000.00, 4),
(2, 'Project Manager', '2021-05-10', 90000.00, 5),
(3, 'Software Engineer', '2020-03-20', 65000.00, 3),
(4, 'Business Analyst', '2019-07-30', 70000.00, 4),
(5, 'Team Lead', '2021-11-01', 80000.00, 4),
(6, 'Quality Assurance', '2020-02-18', 60000.00, 3),
(7, 'System Architect', '2023-04-05', 95000.00, 5),
(8, 'HR Manager', '2018-09-25', 72000.00, 4),
(9, 'Marketing Specialist', '2022-06-15', 58000.00, 3),
(10, 'Data Analyst', '2023-01-10', 67000.00, 4);

-- FOR 'blood_bank' TABLE:
INSERT INTO blood_bank (emp_id, last_donated_on) VALUES
(1, '2023-01-10'),
(2, '2022-12-05'),
(3, '2023-03-15'),
(4, '2023-02-20'),
(5, '2023-04-01'),
(6, '2023-05-30'),
(7, '2023-06-10'),
(8, '2023-07-20'),
(9, '2023-08-01'),
(10, '2023-01-15');

-- CHECK:
select * from employee;
select * from executives;
select * from employee_detail;
select * from blood_bank;