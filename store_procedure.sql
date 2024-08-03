-- STORE PROCEDURE TO RETRIEVE EMPLOYEE DETAILS BASED ON RATINGS:
delimiter $$

create procedure get_emp_by_rating (in rating_input int)
begin
    select e.id as emp_id, e.first_name, e.last_name, ed.designation
    from employee e
    join employee_detail ed on e.id = ed.emp_id
    where ed.rating = rating_input;
end $$

delimiter ;



-- STORE PROCEDURE TO RETRIEVE EMPLOYEE DETAILS BASED ON BLOOD_GROUP WITH CONDITION OF LAST DONATION DATE SHOULD BE 15 MONTHS FROM TODAY:
delimiter $$

create procedure get_emp_by_bloodgroup(in blood_input varchar(3))
begin
	select e.id as emp_id, e.first_name,e.last_name,e.email,bb.last_donated_on
    from employee e
    join blood_bank bb on e.id = bb.emp_id
    where
    e.blood_group = blood_input
    and
    bb.last_donated_on > date_sub(curdate(),interval 15 month);
end $$

delimiter ;



-- STORE PROCEDURE TO UPDATE TIME DATE AND NEED TO UPDATED IT ON ALL TABLES:
delimiter $$

create procedure update_timestamps()
begin
	update employee
    set updated_at = current_timestamp;
    
    update executives
    set updated_at = current_timestamp;
    
    update employee_detail
    set updated_at = current_timestamp;
end $$

delimiter ;



-- CALLING THE PROCEDURES:

call get_emp_by_rating(3);
call get_emp_by_bloodgroup('ab-');
call update_timestamps();
