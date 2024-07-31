-- Insert values:
SET SESSION wait_timeout = 600;
SET SESSION interactive_timeout = 600;

INSERT INTO employee (first_name, last_name, email, dob, blood_group) VALUES
('Divya', 'Prakash', (SELECT generate_email('Divya', 'Prakash')), '1998-04-23', 'A+'),
('Divya', 'Prakash', (SELECT generate_email('Divya', 'Prakash')), '1995-06-15', 'A-'),
('Rahul', 'Kumar', (SELECT generate_email('Rahul', 'Kumar')), '1990-08-10', 'B+'),
('Anjali', 'Sharma', (SELECT generate_email('Anjali', 'Sharma')), '1992-12-01', 'O-'),
('Ravi', 'Singh', (SELECT generate_email('Ravi', 'Singh')), '1994-03-22', 'AB+'),
('Sneha', 'Mehta', (SELECT generate_email('Sneha', 'Mehta')), '1996-07-30', 'B-'),
('Karan', 'Verma', (SELECT generate_email('Karan', 'Verma')), '1991-11-11', 'O+'),
('Pooja', 'Gupta', (SELECT generate_email('Pooja', 'Gupta')), '1993-05-18', 'A+'),
('Neha', 'Bhatia', (SELECT generate_email('Neha', 'Bhatia')), '1990-09-09', 'AB-'),
('Amit', 'Desai', (SELECT generate_email('Amit', 'Desai')), '1989-02-28', 'O-');