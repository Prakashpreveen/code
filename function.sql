-- Creating Function for AutoEmail Generator:
delimiter $$

create function generate_email(first_name varchar(50),last_name varchar(50))
returns varchar(255)
begin
	declare email varchar(255);
    declare count int default 1;
    
    set email = concat(lower(first_name),'.',lower(last_name),'@office.com');
    
    while exists (select 1 from employee where email = email) 
    do set email = concat(lower(first_name),'.',lower(last_name),cast(count as char),'@office.com');
    set count = count + 1;
    end while;
    
    return email;
end $$

delimiter ;